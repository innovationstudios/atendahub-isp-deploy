-- =====================================================
-- Migration: Device Name and Platform Type per Session
-- Criado: 2026-05-02
-- Versão: 1.0.0
-- =====================================================
--
-- Adiciona campos para personalizar o nome do dispositivo
-- e tipo de plataforma exibidos no WhatsApp (Aparelhos Conectados).
-- =====================================================

ALTER TABLE whatsmeow_sessions_map
ADD COLUMN IF NOT EXISTS device_name TEXT DEFAULT '';

ALTER TABLE whatsmeow_sessions_map
ADD COLUMN IF NOT EXISTS platform_type TEXT DEFAULT 'chrome';

COMMENT ON COLUMN whatsmeow_sessions_map.device_name IS 'Nome exibido no WhatsApp em Aparelhos Conectados (ex: MultChat)';
COMMENT ON COLUMN whatsmeow_sessions_map.platform_type IS 'Tipo de plataforma: chrome, firefox, safari, edge, desktop, opera';
