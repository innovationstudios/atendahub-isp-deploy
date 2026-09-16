-- =====================================================
-- Multi-Tenant Support
-- Criado: 2026-01-16
-- Versão: 1.0.0
-- =====================================================
-- 
-- Adiciona suporte multi-tenant para prevenir vazamento
-- de mensagens entre empresas
-- =====================================================

-- Adicionar campos de multi-tenancy
ALTER TABLE whatsmeow_sessions_map 
  ADD COLUMN IF NOT EXISTS company_id INTEGER,
  ADD COLUMN IF NOT EXISTS whatsapp_id INTEGER;

-- Índices para performance
CREATE INDEX IF NOT EXISTS idx_sessions_company ON whatsmeow_sessions_map(company_id);
CREATE INDEX IF NOT EXISTS idx_sessions_whatsapp ON whatsmeow_sessions_map(whatsapp_id);
CREATE INDEX IF NOT EXISTS idx_sessions_company_whatsapp ON whatsmeow_sessions_map(company_id, whatsapp_id);

-- Comentários
COMMENT ON COLUMN whatsmeow_sessions_map.company_id IS 'ID da empresa no SaaS (Companies.id) - Validação de segurança';
COMMENT ON COLUMN whatsmeow_sessions_map.whatsapp_id IS 'ID da conexão no SaaS (Whatsapps.id) - Validação de segurança';

-- Adicionar também na tabela de mensagens para rastreamento
ALTER TABLE whatsmeow_messages
  ADD COLUMN IF NOT EXISTS company_id INTEGER,
  ADD COLUMN IF NOT EXISTS whatsapp_id INTEGER;

CREATE INDEX IF NOT EXISTS idx_messages_company ON whatsmeow_messages(company_id);
CREATE INDEX IF NOT EXISTS idx_messages_whatsapp ON whatsmeow_messages(whatsapp_id);

COMMENT ON COLUMN whatsmeow_messages.company_id IS 'ID da empresa - prevenção de vazamento';
COMMENT ON COLUMN whatsmeow_messages.whatsapp_id IS 'ID da conexão - rastreamento';
