-- =====================================================
-- Migration 008: Accounts, Users, API Keys, Installations
-- Criado: 2026-06-03
-- Versão: 1.0.0
-- =====================================================
--
-- Substitui autenticação baseada em .env por:
--   * accounts:   conta/instalação cliente (SaaS-bound)
--   * companies:  empresas dentro de uma account
--   * dashboard_users: usuários do dashboard
--   * api_keys:   chaves por account (substituem API_KEY global)
--   * account_installations: vínculo instalação ↔ SaaS
-- =====================================================

-- =====================================================
-- ACCOUNTS
-- =====================================================
CREATE TABLE IF NOT EXISTS accounts (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    slug TEXT UNIQUE,
    plan TEXT NOT NULL DEFAULT 'free',
    status TEXT NOT NULL DEFAULT 'active',  -- active, suspended, deleted
    external_saas_account_id TEXT,
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_accounts_status ON accounts(status);
CREATE INDEX IF NOT EXISTS idx_accounts_external ON accounts(external_saas_account_id);

COMMENT ON TABLE accounts IS 'Conta/instalação cliente (vínculo com SaaS)';

-- =====================================================
-- COMPANIES
-- =====================================================
CREATE TABLE IF NOT EXISTS companies (
    id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    external_company_id TEXT,
    status TEXT NOT NULL DEFAULT 'active',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(account_id, name)
);

CREATE INDEX IF NOT EXISTS idx_companies_account ON companies(account_id);

COMMENT ON TABLE companies IS 'Empresas dentro de uma account (multi-empresa)';

-- =====================================================
-- DASHBOARD USERS
-- =====================================================
CREATE TABLE IF NOT EXISTS dashboard_users (
    id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    company_id INTEGER REFERENCES companies(id) ON DELETE SET NULL,
    email TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    name TEXT NOT NULL DEFAULT '',
    role TEXT NOT NULL DEFAULT 'owner',  -- owner, admin, operator, viewer
    is_active BOOLEAN NOT NULL DEFAULT true,
    must_change_password BOOLEAN NOT NULL DEFAULT true,
    last_login_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE(account_id, email)
);

CREATE INDEX IF NOT EXISTS idx_dashboard_users_account ON dashboard_users(account_id);
CREATE INDEX IF NOT EXISTS idx_dashboard_users_email ON dashboard_users(email);

COMMENT ON TABLE dashboard_users IS 'Usuários com login no dashboard (substitui DASHBOARD_PASSWORD do .env)';
COMMENT ON COLUMN dashboard_users.company_id IS 'NULL = usuário da account inteira; preenchido = restrito a uma empresa';
COMMENT ON COLUMN dashboard_users.must_change_password IS 'Força troca de senha no próximo login';

-- =====================================================
-- API KEYS
-- =====================================================
CREATE TABLE IF NOT EXISTS api_keys (
    id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    company_id INTEGER REFERENCES companies(id) ON DELETE SET NULL,
    name TEXT NOT NULL,
    key_prefix TEXT NOT NULL,           -- ex: wsm_live_9JpQ
    key_hash TEXT NOT NULL,             -- bcrypt/argon2/sha256
    scopes TEXT NOT NULL DEFAULT '*',   -- csv de scopes
    is_active BOOLEAN NOT NULL DEFAULT true,
    expires_at TIMESTAMPTZ,
    last_used_at TIMESTAMPTZ,
    created_by_user_id INTEGER REFERENCES dashboard_users(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    revoked_at TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_api_keys_account ON api_keys(account_id);
CREATE INDEX IF NOT EXISTS idx_api_keys_prefix ON api_keys(key_prefix);
CREATE INDEX IF NOT EXISTS idx_api_keys_active ON api_keys(is_active) WHERE is_active = true;

COMMENT ON TABLE api_keys IS 'Chaves de API por account (substitui API_KEY global do .env)';
COMMENT ON COLUMN api_keys.key_hash IS 'Hash da key completa — nunca salvar a key em texto puro';

-- =====================================================
-- ACCOUNT INSTALLATIONS
-- =====================================================
CREATE TABLE IF NOT EXISTS account_installations (
    id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
    installation_uuid TEXT UNIQUE NOT NULL,
    installation_name TEXT NOT NULL DEFAULT 'default',
    permission_key_prefix TEXT NOT NULL,
    permission_key_hash TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'active',
    last_seen_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_installations_account ON account_installations(account_id);
CREATE INDEX IF NOT EXISTS idx_installations_prefix ON account_installations(permission_key_prefix);

COMMENT ON TABLE account_installations IS 'Instalações do whatsmews vinculadas a uma account/SaaS';

-- =====================================================
-- VINCULAR SESSÕES ÀS CONTAS (preparação para fase 2)
-- =====================================================
ALTER TABLE whatsmeow_sessions_map
  ADD COLUMN IF NOT EXISTS account_id INTEGER,
  ADD COLUMN IF NOT EXISTS created_by_user_id INTEGER;

CREATE INDEX IF NOT EXISTS idx_sessions_map_account ON whatsmeow_sessions_map(account_id);

COMMENT ON COLUMN whatsmeow_sessions_map.account_id IS 'ID da account (multi-tenant)';
COMMENT ON COLUMN whatsmeow_sessions_map.created_by_user_id IS 'ID do usuário dashboard que criou a sessão';

-- =====================================================
-- SEED: conta default + empresa default + admin inicial
-- Só insere se ainda não existir (idempotente).
-- Senha inicial: 123456  (must_change_password = true)
-- Hash: bcrypt cost=10 de "123456"
-- =====================================================
INSERT INTO accounts (id, name, slug, plan, status)
VALUES (1, 'Default', 'default', 'free', 'active')
ON CONFLICT (id) DO NOTHING;

INSERT INTO companies (id, account_id, name, status)
VALUES (1, 1, 'Default', 'active')
ON CONFLICT (account_id, name) DO NOTHING;

INSERT INTO dashboard_users (id, account_id, company_id, email, password_hash, name, role, is_active, must_change_password)
VALUES (
    1, 1, 1,
    'admin@admin.com',
    '$2a$10$F18BZRlr2OVglYzxK.y0u.aCyoaiR2jTf5IPOibSa1nqIdCFHujqm',
    'Admin',
    'owner',
    true,
    true
)
ON CONFLICT (account_id, email) DO NOTHING;

-- Garante que as sequences não colidem com os IDs inseridos acima
SELECT setval('accounts_id_seq',  GREATEST((SELECT MAX(id) FROM accounts),  1));
SELECT setval('companies_id_seq', GREATEST((SELECT MAX(id) FROM companies), 1));
SELECT setval('dashboard_users_id_seq', GREATEST((SELECT MAX(id) FROM dashboard_users), 1));
