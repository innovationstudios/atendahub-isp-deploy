-- =====================================================
-- WhatsMeow Messages Storage
-- Criado: 2026-01-16
-- Versão: 1.0.0
-- =====================================================
-- 
-- Esta tabela armazena TODAS as mensagens recebidas como backup.
-- Usa UPSERT para evitar duplicações.
-- =====================================================

-- Tabela de mensagens
CREATE TABLE IF NOT EXISTS whatsmeow_messages (
    id SERIAL PRIMARY KEY,
    
    -- Identificação
    session_id TEXT NOT NULL,                    -- ID da sessão customizado
    message_id TEXT NOT NULL,                    -- ID único da mensagem WhatsApp
    
    -- Remetente
    sender_jid TEXT NOT NULL,                    -- JID de quem enviou
    chat_jid TEXT NOT NULL,                      -- JID do chat (privado ou grupo)
    push_name TEXT,                              -- Nome do remetente
    
    -- Metadados
    timestamp TIMESTAMPTZ NOT NULL,              -- Quando a mensagem foi enviada
    is_from_me BOOLEAN DEFAULT FALSE,            -- Se foi enviada por nós
    is_group BOOLEAN DEFAULT FALSE,              -- Se é mensagem de grupo
    media_type TEXT,                             -- text, image, video, audio, document, sticker
    
    -- Conteúdo
    message_content JSONB,                       -- Conteúdo completo da mensagem (JSON)
    
    -- Webhook
    webhook_status TEXT DEFAULT 'pending',       -- pending, delivered, failed
    webhook_attempts INT DEFAULT 0,              -- Número de tentativas
    webhook_last_error TEXT,                     -- Último erro de entrega
    
    -- Timestamps
    created_at TIMESTAMPTZ DEFAULT NOW(),        -- Quando foi inserido no banco
    delivered_at TIMESTAMPTZ,                    -- Quando foi entregue ao webhook
    
    -- Constraint para evitar duplicações
    UNIQUE(session_id, message_id)
);

-- Índices para performance
CREATE INDEX IF NOT EXISTS idx_messages_session ON whatsmeow_messages(session_id);
CREATE INDEX IF NOT EXISTS idx_messages_webhook_status ON whatsmeow_messages(webhook_status);
CREATE INDEX IF NOT EXISTS idx_messages_timestamp ON whatsmeow_messages(timestamp);
CREATE INDEX IF NOT EXISTS idx_messages_sender ON whatsmeow_messages(sender_jid);
CREATE INDEX IF NOT EXISTS idx_messages_chat ON whatsmeow_messages(chat_jid);
CREATE INDEX IF NOT EXISTS idx_messages_created ON whatsmeow_messages(created_at);

-- Comentários
COMMENT ON TABLE whatsmeow_messages IS 'Backup de todas as mensagens recebidas pelo WhatsMeow';
COMMENT ON COLUMN whatsmeow_messages.webhook_status IS 'pending=aguardando, delivered=entregue, failed=falhou';
COMMENT ON COLUMN whatsmeow_messages.message_content IS 'JSON completo do proto waE2E.Message';
