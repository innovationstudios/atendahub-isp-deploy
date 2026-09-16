-- =====================================================
-- WhatsMeow Sessions Map
-- Criado: 2026-01-16
-- Versão: 1.0.0
-- =====================================================
-- 
-- Esta tabela gerencia todas as sessões, mesmo antes de autenticar.
-- Substitui o arquivo sessions.json.
-- =====================================================

CREATE TABLE IF NOT EXISTS whatsmeow_sessions_map (
    id SERIAL PRIMARY KEY,
    
    -- Identificação
    session_id TEXT UNIQUE NOT NULL,           -- ID customizado (ex: 'minha_empresa')
    whatsapp_jid TEXT,                          -- JID do WhatsApp (preenchido após autenticação)
    
    -- Configurações
    webhook_url TEXT,                           -- URL do webhook
    
    -- Status
    status TEXT DEFAULT 'pending',              -- pending, connected, disconnected, deleted
    
    -- Timestamps
    created_at TIMESTAMPTZ DEFAULT NOW(),       -- Quando foi criada
    connected_at TIMESTAMPTZ,                   -- Quando autenticou (escaneou QR)
    last_seen_at TIMESTAMPTZ,                   -- Última atividade
    
    -- Extras
    metadata JSONB                              -- Dados extras (opcional)
);

-- Índices
CREATE INDEX IF NOT EXISTS idx_sessions_map_status ON whatsmeow_sessions_map(status);
CREATE INDEX IF NOT EXISTS idx_sessions_map_jid ON whatsmeow_sessions_map(whatsapp_jid);
CREATE INDEX IF NOT EXISTS idx_sessions_map_created ON whatsmeow_sessions_map(created_at);

-- Comentários
COMMENT ON TABLE whatsmeow_sessions_map IS 'Gerenciamento de todas as sessões (substitui sessions.json)';
COMMENT ON COLUMN whatsmeow_sessions_map.session_id IS 'ID amigável definido pelo usuário';
COMMENT ON COLUMN whatsmeow_sessions_map.whatsapp_jid IS 'JID do WhatsApp, preenchido após escanear QR Code';
COMMENT ON COLUMN whatsmeow_sessions_map.status IS 'pending=aguardando QR, connected=online, disconnected=offline';
