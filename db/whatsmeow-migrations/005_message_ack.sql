-- =====================================================
-- WhatsMeow Message ACK (Acknowledgement) Support
-- Criado: 2026-01-17
-- Versão: 1.0.0
-- =====================================================
-- 
-- Esta migration adiciona suporte para rastrear o status
-- de entrega/leitura das mensagens do WhatsApp.
-- 
-- Hierarquia de ACK (NÃO PODE REGREDIR):
--   sent (0) → delivered (1) → read (2) → played (3)
-- =====================================================

-- Adiciona coluna de status do ACK
ALTER TABLE whatsmeow_messages 
ADD COLUMN IF NOT EXISTS ack_status TEXT DEFAULT 'sent';

-- Adiciona timestamp do último ACK recebido
ALTER TABLE whatsmeow_messages 
ADD COLUMN IF NOT EXISTS ack_timestamp TIMESTAMPTZ;

-- Adiciona JID do participante que leu/recebeu (útil para grupos futuramente)
ALTER TABLE whatsmeow_messages 
ADD COLUMN IF NOT EXISTS ack_participant TEXT;

-- Índice para buscar por status de ACK
CREATE INDEX IF NOT EXISTS idx_messages_ack_status ON whatsmeow_messages(ack_status);

-- Índice composto para performance em queries de status por sessão
CREATE INDEX IF NOT EXISTS idx_messages_session_ack ON whatsmeow_messages(session_id, ack_status);

-- Comentários descritivos
COMMENT ON COLUMN whatsmeow_messages.ack_status IS 'Status do ACK: sent|delivered|read|played - Segue hierarquia e não pode regredir';
COMMENT ON COLUMN whatsmeow_messages.ack_timestamp IS 'Timestamp do último ACK recebido do WhatsApp';
COMMENT ON COLUMN whatsmeow_messages.ack_participant IS 'JID do participante que confirmou (para grupos)';

-- =====================================================
-- Função para atualizar ACK sem permitir regressão
-- =====================================================
CREATE OR REPLACE FUNCTION update_message_ack(
    p_session_id TEXT,
    p_message_id TEXT,
    p_new_status TEXT,
    p_timestamp TIMESTAMPTZ,
    p_participant TEXT DEFAULT NULL
) RETURNS BOOLEAN AS $$
DECLARE
    v_current_level INT;
    v_new_level INT;
    v_updated BOOLEAN := FALSE;
BEGIN
    -- Mapeia status para nível hierárquico
    v_new_level := CASE p_new_status
        WHEN 'sent' THEN 0
        WHEN 'delivered' THEN 1
        WHEN 'read' THEN 2
        WHEN 'played' THEN 3
        ELSE 0
    END;

    -- Obtém nível atual
    SELECT CASE ack_status
        WHEN 'sent' THEN 0
        WHEN 'delivered' THEN 1
        WHEN 'read' THEN 2
        WHEN 'played' THEN 3
        ELSE 0
    END INTO v_current_level
    FROM whatsmeow_messages
    WHERE session_id = p_session_id AND message_id = p_message_id;

    -- Só atualiza se o novo nível for maior (sem regressão)
    IF v_current_level IS NULL OR v_new_level > v_current_level THEN
        UPDATE whatsmeow_messages
        SET 
            ack_status = p_new_status,
            ack_timestamp = p_timestamp,
            ack_participant = COALESCE(p_participant, ack_participant)
        WHERE session_id = p_session_id AND message_id = p_message_id;
        
        v_updated := FOUND;
    END IF;

    RETURN v_updated;
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION update_message_ack IS 'Atualiza o status de ACK de uma mensagem, garantindo que não haja regressão hierárquica';
