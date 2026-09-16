-- =====================================================
-- Migration: Enable Groups per Session
-- Criado: 2026-02-05
-- Versão: 1.0.0
-- =====================================================
-- 
-- Adiciona campo para controlar recebimento de mensagens de grupo por sessão.
-- Por padrão, grupos estão DESATIVADOS (comportamento atual).
-- =====================================================

-- Adiciona coluna enable_groups (default FALSE para manter compatibilidade)
ALTER TABLE whatsmeow_sessions_map 
ADD COLUMN IF NOT EXISTS enable_groups BOOLEAN DEFAULT FALSE;

-- Comentário
COMMENT ON COLUMN whatsmeow_sessions_map.enable_groups IS 'Se TRUE, processa mensagens de grupos e envia ao webhook';

-- Índice para consultas filtradas por enable_groups
CREATE INDEX IF NOT EXISTS idx_sessions_map_enable_groups ON whatsmeow_sessions_map(enable_groups);
