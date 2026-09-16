--
-- PostgreSQL database dump
--


-- Dumped from database version 15.19
-- Dumped by pg_dump version 15.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public."WhiteLabels" DROP CONSTRAINT IF EXISTS "WhiteLabels_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Whatsapps" DROP CONSTRAINT IF EXISTS "Whatsapps_outgoingId_fkey";
ALTER TABLE IF EXISTS ONLY public."Whatsapps" DROP CONSTRAINT IF EXISTS "Whatsapps_maxUseBotQueueId_fkey";
ALTER TABLE IF EXISTS ONLY public."Whatsapps" DROP CONSTRAINT IF EXISTS "Whatsapps_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."WhatsappTemplates" DROP CONSTRAINT IF EXISTS "WhatsappTemplates_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."WhatsappTemplates" DROP CONSTRAINT IF EXISTS "WhatsappTemplates_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."WebhookEndpoints" DROP CONSTRAINT IF EXISTS "WebhookEndpoints_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserWhatsapps" DROP CONSTRAINT IF EXISTS "UserWhatsapps_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserWhatsapps" DROP CONSTRAINT IF EXISTS "UserWhatsapps_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_ratingId_fkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_ratingIdOption_fkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_telegramBotId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_queueOptionId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_groupContactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_ratingId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTags" DROP CONSTRAINT IF EXISTS "TicketTags_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketTags" DROP CONSTRAINT IF EXISTS "TicketTags_tagId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketNotes" DROP CONSTRAINT IF EXISTS "TicketNotes_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketNotes" DROP CONSTRAINT IF EXISTS "TicketNotes_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketNotes" DROP CONSTRAINT IF EXISTS "TicketNotes_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketMediaDeliveries" DROP CONSTRAINT IF EXISTS "TicketMediaDeliveries_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketMediaDeliveries" DROP CONSTRAINT IF EXISTS "TicketMediaDeliveries_mediaId_fkey";
ALTER TABLE IF EXISTS ONLY public."TicketMediaDeliveries" DROP CONSTRAINT IF EXISTS "TicketMediaDeliveries_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."TelegramBots" DROP CONSTRAINT IF EXISTS "TelegramBots_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."TelegramBots" DROP CONSTRAINT IF EXISTS "TelegramBots_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tasks" DROP CONSTRAINT IF EXISTS "Tasks_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tasks" DROP CONSTRAINT IF EXISTS "Tasks_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Tags" DROP CONSTRAINT IF EXISTS "Tags_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Subscriptions" DROP CONSTRAINT IF EXISTS "Subscriptions_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Settings" DROP CONSTRAINT IF EXISTS "Settings_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Schedules" DROP CONSTRAINT IF EXISTS "Schedules_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."Schedules" DROP CONSTRAINT IF EXISTS "Schedules_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."Schedules" DROP CONSTRAINT IF EXISTS "Schedules_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Schedules" DROP CONSTRAINT IF EXISTS "Schedules_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Ratings" DROP CONSTRAINT IF EXISTS "Ratings_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."RatingsOptions" DROP CONSTRAINT IF EXISTS "RatingsOptions_ratingId_fkey";
ALTER TABLE IF EXISTS ONLY public."QuickMessages" DROP CONSTRAINT IF EXISTS "QuickMessages_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."QuickMessages" DROP CONSTRAINT IF EXISTS "QuickMessages_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Queues" DROP CONSTRAINT IF EXISTS "Queues_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."QueueOptions" DROP CONSTRAINT IF EXISTS "QueueOptions_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."QueueOptions" DROP CONSTRAINT IF EXISTS "QueueOptions_parentId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_ownerId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_createdById_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossierDocuments" DROP CONSTRAINT IF EXISTS "ProfessionalDossierDocuments_uploadedById_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossierDocuments" DROP CONSTRAINT IF EXISTS "ProfessionalDossierDocuments_dossierId_fkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossierDocuments" DROP CONSTRAINT IF EXISTS "ProfessionalDossierDocuments_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaigns" DROP CONSTRAINT IF EXISTS "OfficialCampaigns_whatsappTemplateId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaigns" DROP CONSTRAINT IF EXISTS "OfficialCampaigns_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaigns" DROP CONSTRAINT IF EXISTS "OfficialCampaigns_contactListId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaigns" DROP CONSTRAINT IF EXISTS "OfficialCampaigns_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShippings" DROP CONSTRAINT IF EXISTS "OfficialCampaignShippings_officialCampaignId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShippings" DROP CONSTRAINT IF EXISTS "OfficialCampaignShippings_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShipping" DROP CONSTRAINT IF EXISTS "OfficialCampaignShipping_officialCampaignId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShipping" DROP CONSTRAINT IF EXISTS "OfficialCampaignShipping_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_quotedMsgId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_participantContactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."LeadHunterCampaigns" DROP CONSTRAINT IF EXISTS "LeadHunterCampaigns_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeJobs" DROP CONSTRAINT IF EXISTS "KnowledgeJobs_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeJobs" DROP CONSTRAINT IF EXISTS "KnowledgeJobs_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeEntities" DROP CONSTRAINT IF EXISTS "KnowledgeEntities_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeChunks" DROP CONSTRAINT IF EXISTS "KnowledgeChunks_sourceId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeArticles" DROP CONSTRAINT IF EXISTS "KnowledgeArticles_sourceTicketId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeArticles" DROP CONSTRAINT IF EXISTS "KnowledgeArticles_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeAccessLogs" DROP CONSTRAINT IF EXISTS "KnowledgeAccessLogs_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."KipflowQueries" DROP CONSTRAINT IF EXISTS "KipflowQueries_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."KipflowQueries" DROP CONSTRAINT IF EXISTS "KipflowQueries_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."KipflowQueries" DROP CONSTRAINT IF EXISTS "KipflowQueries_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."KipflowQueries" DROP CONSTRAINT IF EXISTS "KipflowQueries_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Invoices" DROP CONSTRAINT IF EXISTS "Invoices_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Integrations" DROP CONSTRAINT IF EXISTS "Integrations_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_whiteLabelId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_serverId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_licenseId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureDeployments" DROP CONSTRAINT IF EXISTS "InfrastructureDeployments_releaseId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureDeployments" DROP CONSTRAINT IF EXISTS "InfrastructureDeployments_installationId_fkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureBackups" DROP CONSTRAINT IF EXISTS "InfrastructureBackups_installationId_fkey";
ALTER TABLE IF EXISTS ONLY public."GroupContacts" DROP CONSTRAINT IF EXISTS "GroupContacts_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."GraphNodes" DROP CONSTRAINT IF EXISTS "GraphNodes_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."GraphEdges" DROP CONSTRAINT IF EXISTS "GraphEdges_targetNodeId_fkey";
ALTER TABLE IF EXISTS ONLY public."GraphEdges" DROP CONSTRAINT IF EXISTS "GraphEdges_sourceNodeId_fkey";
ALTER TABLE IF EXISTS ONLY public."GraphEdges" DROP CONSTRAINT IF EXISTS "GraphEdges_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."FollowUpEvents" DROP CONSTRAINT IF EXISTS "FollowUpEvents_enrollmentId_fkey";
ALTER TABLE IF EXISTS ONLY public."FollowUpEnrollments" DROP CONSTRAINT IF EXISTS "FollowUpEnrollments_flowId_fkey";
ALTER TABLE IF EXISTS ONLY public."FinanceInvoices" DROP CONSTRAINT IF EXISTS "FinanceInvoices_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."FinanceInvoices" DROP CONSTRAINT IF EXISTS "FinanceInvoices_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."FinanceConfigs" DROP CONSTRAINT IF EXISTS "FinanceConfigs_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."FinanceConfigs" DROP CONSTRAINT IF EXISTS "FinanceConfigs_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ExternalIntegrationQueries" DROP CONSTRAINT IF EXISTS "ExternalIntegrationQueries_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."ExternalIntegrationQueries" DROP CONSTRAINT IF EXISTS "ExternalIntegrationQueries_ticketId_fkey";
ALTER TABLE IF EXISTS ONLY public."ExternalIntegrationQueries" DROP CONSTRAINT IF EXISTS "ExternalIntegrationQueries_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."ExternalIntegrationQueries" DROP CONSTRAINT IF EXISTS "ExternalIntegrationQueries_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Eventos" DROP CONSTRAINT IF EXISTS "Eventos_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Escorts" DROP CONSTRAINT IF EXISTS "Escorts_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."Escorts" DROP CONSTRAINT IF EXISTS "Escorts_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."EscortMedia" DROP CONSTRAINT IF EXISTS "EscortMedia_escortId_fkey";
ALTER TABLE IF EXISTS ONLY public."EscortMedia" DROP CONSTRAINT IF EXISTS "EscortMedia_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Emails" DROP CONSTRAINT IF EXISTS "Emails_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."EmailIntegrations" DROP CONSTRAINT IF EXISTS "EmailIntegrations_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."DialogChatBots" DROP CONSTRAINT IF EXISTS "DialogChatBots_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."DialogChatBots" DROP CONSTRAINT IF EXISTS "DialogChatBots_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."DialogChatBots" DROP CONSTRAINT IF EXISTS "DialogChatBots_chatbotId_fkey";
ALTER TABLE IF EXISTS ONLY public."CreditTransactions" DROP CONSTRAINT IF EXISTS "CreditTransactions_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Contacts" DROP CONSTRAINT IF EXISTS "Contacts_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactRoles" DROP CONSTRAINT IF EXISTS "ContactRoles_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactRoles" DROP CONSTRAINT IF EXISTS "ContactRoles_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactLists" DROP CONSTRAINT IF EXISTS "ContactLists_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactListItems" DROP CONSTRAINT IF EXISTS "ContactListItems_contactListId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactListItems" DROP CONSTRAINT IF EXISTS "ContactListItems_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactListItems" DROP CONSTRAINT IF EXISTS "ContactListItems_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."ContactCustomFields" DROP CONSTRAINT IF EXISTS "ContactCustomFields_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."CompanyWebhookSecrets" DROP CONSTRAINT IF EXISTS "CompanyWebhookSecrets_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Companies" DROP CONSTRAINT IF EXISTS "Companies_planId_fkey";
ALTER TABLE IF EXISTS ONLY public."Chats" DROP CONSTRAINT IF EXISTS "Chats_ownerId_fkey";
ALTER TABLE IF EXISTS ONLY public."Chats" DROP CONSTRAINT IF EXISTS "Chats_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Chatbots" DROP CONSTRAINT IF EXISTS "Chatbots_queueId_fkey";
ALTER TABLE IF EXISTS ONLY public."Chatbots" DROP CONSTRAINT IF EXISTS "Chatbots_chatbotId_fkey";
ALTER TABLE IF EXISTS ONLY public."ChatUsers" DROP CONSTRAINT IF EXISTS "ChatUsers_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."ChatUsers" DROP CONSTRAINT IF EXISTS "ChatUsers_chatId_fkey";
ALTER TABLE IF EXISTS ONLY public."ChatMessages" DROP CONSTRAINT IF EXISTS "ChatMessages_senderId_fkey";
ALTER TABLE IF EXISTS ONLY public."ChatMessages" DROP CONSTRAINT IF EXISTS "ChatMessages_chatId_fkey";
ALTER TABLE IF EXISTS ONLY public."Campaigns" DROP CONSTRAINT IF EXISTS "Campaigns_whatsappId_fkey";
ALTER TABLE IF EXISTS ONLY public."Campaigns" DROP CONSTRAINT IF EXISTS "Campaigns_contactListId_fkey";
ALTER TABLE IF EXISTS ONLY public."Campaigns" DROP CONSTRAINT IF EXISTS "Campaigns_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."CampaignShipping" DROP CONSTRAINT IF EXISTS "CampaignShipping_contactId_fkey";
ALTER TABLE IF EXISTS ONLY public."CampaignShipping" DROP CONSTRAINT IF EXISTS "CampaignShipping_campaignId_fkey";
ALTER TABLE IF EXISTS ONLY public."CampaignSettings" DROP CONSTRAINT IF EXISTS "CampaignSettings_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."AutomationRuns" DROP CONSTRAINT IF EXISTS "AutomationRuns_ruleId_fkey";
ALTER TABLE IF EXISTS ONLY public."AuditLogs" DROP CONSTRAINT IF EXISTS "AuditLogs_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."AuditLogs" DROP CONSTRAINT IF EXISTS "AuditLogs_actorId_fkey";
ALTER TABLE IF EXISTS ONLY public."ApiRequests" DROP CONSTRAINT IF EXISTS "ApiRequests_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."Announcements" DROP CONSTRAINT IF EXISTS "Announcements_companyId_fkey";
ALTER TABLE IF EXISTS ONLY public."AgendamentoEmails" DROP CONSTRAINT IF EXISTS "AgendamentoEmails_companyId_fkey";
DROP INDEX IF EXISTS public.uq_sgp_template_code;
DROP INDEX IF EXISTS public.uq_agent_glossary_phrase;
DROP INDEX IF EXISTS public.uniq_ticket_media_delivery;
DROP INDEX IF EXISTS public.professional_dossiers_portfolio_idx;
DROP INDEX IF EXISTS public.professional_dossiers_deadline_idx;
DROP INDEX IF EXISTS public.professional_dossiers_contact_idx;
DROP INDEX IF EXISTS public.professional_dossier_documents_idx;
DROP INDEX IF EXISTS public.official_campaign_shipping_campaign_status_idx;
DROP INDEX IF EXISTS public.kipflow_queries_ticket_idx;
DROP INDEX IF EXISTS public.kipflow_queries_cache_idx;
DROP INDEX IF EXISTS public.infra_one_active_command_per_installation;
DROP INDEX IF EXISTS public.idx_whatsapp_templates_company;
DROP INDEX IF EXISTS public.idx_user_whatsapps_whatsapp_id;
DROP INDEX IF EXISTS public."idx_tickettraking_whatsappId";
DROP INDEX IF EXISTS public."idx_tickettraking_userId";
DROP INDEX IF EXISTS public."idx_tickettraking_ticketId";
DROP INDEX IF EXISTS public."idx_tickettraking_finishedAt";
DROP INDEX IF EXISTS public."idx_tickettraking_companyId_createdAt";
DROP INDEX IF EXISTS public."idx_tickets_updatedAt";
DROP INDEX IF EXISTS public.idx_tickets_status;
DROP INDEX IF EXISTS public.idx_tickets_open_pending_unique;
DROP INDEX IF EXISTS public.idx_tg_company_id;
DROP INDEX IF EXISTS public.idx_sgp_templates_company;
DROP INDEX IF EXISTS public.idx_sched_company_id;
DROP INDEX IF EXISTS public.idx_ms_company_id_ticket_id;
DROP INDEX IF EXISTS public."idx_messages_ticketId_createdAt";
DROP INDEX IF EXISTS public."idx_messages_ticketId";
DROP INDEX IF EXISTS public."idx_messages_fromMe";
DROP INDEX IF EXISTS public."idx_messages_createdAt";
DROP INDEX IF EXISTS public."idx_messages_companyId";
DROP INDEX IF EXISTS public.idx_llm_configs_company;
DROP INDEX IF EXISTS public.idx_leadhunter_campaigns_status;
DROP INDEX IF EXISTS public.idx_leadhunter_campaigns_company_campaign;
DROP INDEX IF EXISTS public.idx_leadhunter_campaigns_company;
DROP INDEX IF EXISTS public.idx_leadhunter_campaigns_campaign;
DROP INDEX IF EXISTS public.idx_layout_presets_company;
DROP INDEX IF EXISTS public.idx_knowledge_jobs_ticket;
DROP INDEX IF EXISTS public.idx_knowledge_jobs_status;
DROP INDEX IF EXISTS public.idx_knowledge_jobs_pending_retry;
DROP INDEX IF EXISTS public.idx_knowledge_jobs_company;
DROP INDEX IF EXISTS public.idx_knowledge_entities_tags;
DROP INDEX IF EXISTS public.idx_knowledge_entities_confidence;
DROP INDEX IF EXISTS public.idx_knowledge_entities_company;
DROP INDEX IF EXISTS public.idx_knowledge_entities_category;
DROP INDEX IF EXISTS public.idx_knowledge_articles_type;
DROP INDEX IF EXISTS public.idx_knowledge_articles_tags;
DROP INDEX IF EXISTS public.idx_knowledge_articles_status;
DROP INDEX IF EXISTS public.idx_knowledge_articles_confidence;
DROP INDEX IF EXISTS public.idx_knowledge_articles_company;
DROP INDEX IF EXISTS public.idx_knowledge_access_log_user;
DROP INDEX IF EXISTS public.idx_knowledge_access_log_time;
DROP INDEX IF EXISTS public.idx_knowledge_access_log_resource;
DROP INDEX IF EXISTS public.idx_knowledge_access_log_company;
DROP INDEX IF EXISTS public.idx_graph_nodes_type;
DROP INDEX IF EXISTS public.idx_graph_nodes_company;
DROP INDEX IF EXISTS public.idx_graph_edges_type;
DROP INDEX IF EXISTS public.idx_graph_edges_target;
DROP INDEX IF EXISTS public.idx_graph_edges_source;
DROP INDEX IF EXISTS public.idx_graph_edges_company;
DROP INDEX IF EXISTS public.idx_escort_media_lookup;
DROP INDEX IF EXISTS public.idx_ctli_contact_list_id;
DROP INDEX IF EXISTS public.idx_cpsh_campaign_id;
DROP INDEX IF EXISTS public.idx_contact_roles_contact;
DROP INDEX IF EXISTS public.idx_contact_roles_company;
DROP INDEX IF EXISTS public.idx_cont_company_id;
DROP INDEX IF EXISTS public.idx_chat_users_unreads;
DROP INDEX IF EXISTS public.idx_audit_logs_entity;
DROP INDEX IF EXISTS public.idx_audit_logs_company_created;
DROP INDEX IF EXISTS public.idx_ai_logs_ticket;
DROP INDEX IF EXISTS public.idx_ai_logs_created;
DROP INDEX IF EXISTS public.idx_ai_logs_company;
DROP INDEX IF EXISTS public.idx_agent_glossary_company;
DROP INDEX IF EXISTS public.external_integration_queries_idx;
DROP INDEX IF EXISTS public.external_integration_contact_idx;
DROP INDEX IF EXISTS public."Tickets_one_open_per_contact_channel";
DROP INDEX IF EXISTS public."MessageTemplates_companyId_idx";
DROP INDEX IF EXISTS public."McpTokens_hash_idx";
DROP INDEX IF EXISTS public."McpTokens_companyId_idx";
DROP INDEX IF EXISTS public."LuxuryContactMemories_company_contact_idx";
DROP INDEX IF EXISTS public."LgpdExecutions_contactId_idx";
DROP INDEX IF EXISTS public."LgpdExecutions_companyId_idx";
DROP INDEX IF EXISTS public."KnowledgeSources_companyId_idx";
DROP INDEX IF EXISTS public."KnowledgeChunks_sourceId_idx";
DROP INDEX IF EXISTS public."KnowledgeChunks_companyId_idx";
DROP INDEX IF EXISTS public."Incidents_active_pon";
DROP INDEX IF EXISTS public."FollowUpFlows_companyId_idx";
DROP INDEX IF EXISTS public."FollowUpEvents_enrollmentId_idx";
DROP INDEX IF EXISTS public."FollowUpEvents_companyId_createdAt_idx";
DROP INDEX IF EXISTS public."FollowUpEnrollments_nextRunAt_idx";
DROP INDEX IF EXISTS public."FollowUpEnrollments_flow_ticket_uniq";
DROP INDEX IF EXISTS public."FollowUpEnrollments_companyId_idx";
DROP INDEX IF EXISTS public."Contacts_number_companyId_unique";
DROP INDEX IF EXISTS public."AutomationRuns_ruleId_idx";
DROP INDEX IF EXISTS public."AutomationRuns_companyId_createdAt_idx";
DROP INDEX IF EXISTS public."AutomationRules_companyId_idx";
ALTER TABLE IF EXISTS ONLY public."ContactRoles" DROP CONSTRAINT IF EXISTS uq_contact_roles_company_contact_role;
ALTER TABLE IF EXISTS ONLY public."GraphNodes" DROP CONSTRAINT IF EXISTS unique_graph_node_company_type_entity;
ALTER TABLE IF EXISTS ONLY public.schema_migrations DROP CONSTRAINT IF EXISTS schema_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.proxies DROP CONSTRAINT IF EXISTS proxies_pkey;
ALTER TABLE IF EXISTS ONLY public."InfrastructureDeployments" DROP CONSTRAINT IF EXISTS infra_deployments_idempotency_unique;
ALTER TABLE IF EXISTS ONLY public.baileys_stores DROP CONSTRAINT IF EXISTS "baileys_stores_sessionId_key";
ALTER TABLE IF EXISTS ONLY public.baileys_stores DROP CONSTRAINT IF EXISTS baileys_stores_pkey;
ALTER TABLE IF EXISTS ONLY public."WhiteLabels" DROP CONSTRAINT IF EXISTS "WhiteLabels_slug_key";
ALTER TABLE IF EXISTS ONLY public."WhiteLabels" DROP CONSTRAINT IF EXISTS "WhiteLabels_pkey";
ALTER TABLE IF EXISTS ONLY public."WhiteLabels" DROP CONSTRAINT IF EXISTS "WhiteLabels_domain_key";
ALTER TABLE IF EXISTS ONLY public."Whatsapps" DROP CONSTRAINT IF EXISTS "Whatsapps_pkey";
ALTER TABLE IF EXISTS ONLY public."Whatsapps" DROP CONSTRAINT IF EXISTS "Whatsapps_name_key";
ALTER TABLE IF EXISTS ONLY public."WhatsappTemplates" DROP CONSTRAINT IF EXISTS "WhatsappTemplates_templateId_key";
ALTER TABLE IF EXISTS ONLY public."WhatsappTemplates" DROP CONSTRAINT IF EXISTS "WhatsappTemplates_pkey";
ALTER TABLE IF EXISTS ONLY public."WhatsappQueues" DROP CONSTRAINT IF EXISTS "WhatsappQueues_pkey";
ALTER TABLE IF EXISTS ONLY public."WhatsMeowSessions" DROP CONSTRAINT IF EXISTS "WhatsMeowSessions_sessionId_key";
ALTER TABLE IF EXISTS ONLY public."WhatsMeowSessions" DROP CONSTRAINT IF EXISTS "WhatsMeowSessions_pkey";
ALTER TABLE IF EXISTS ONLY public."WebhookEndpoints" DROP CONSTRAINT IF EXISTS "WebhookEndpoints_pkey";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_pkey";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_email_key";
ALTER TABLE IF EXISTS ONLY public."UserWhatsapps" DROP CONSTRAINT IF EXISTS "UserWhatsapps_pkey";
ALTER TABLE IF EXISTS ONLY public."UserRatings" DROP CONSTRAINT IF EXISTS "UserRatings_pkey";
ALTER TABLE IF EXISTS ONLY public."UserQueues" DROP CONSTRAINT IF EXISTS "UserQueues_pkey";
ALTER TABLE IF EXISTS ONLY public."Tickets" DROP CONSTRAINT IF EXISTS "Tickets_pkey";
ALTER TABLE IF EXISTS ONLY public."TicketTraking" DROP CONSTRAINT IF EXISTS "TicketTraking_pkey";
ALTER TABLE IF EXISTS ONLY public."TicketNotes" DROP CONSTRAINT IF EXISTS "TicketNotes_pkey";
ALTER TABLE IF EXISTS ONLY public."TicketMediaDeliveries" DROP CONSTRAINT IF EXISTS "TicketMediaDeliveries_pkey";
ALTER TABLE IF EXISTS ONLY public."TelegramBots" DROP CONSTRAINT IF EXISTS "TelegramBots_pkey";
ALTER TABLE IF EXISTS ONLY public."Tasks" DROP CONSTRAINT IF EXISTS "Tasks_pkey";
ALTER TABLE IF EXISTS ONLY public."Tags" DROP CONSTRAINT IF EXISTS "Tags_pkey";
ALTER TABLE IF EXISTS ONLY public."Subscriptions" DROP CONSTRAINT IF EXISTS "Subscriptions_pkey";
ALTER TABLE IF EXISTS ONLY public."SequelizeMeta" DROP CONSTRAINT IF EXISTS "SequelizeMeta_pkey";
ALTER TABLE IF EXISTS ONLY public."Schedules" DROP CONSTRAINT IF EXISTS "Schedules_pkey";
ALTER TABLE IF EXISTS ONLY public."SGPMessageTemplates" DROP CONSTRAINT IF EXISTS "SGPMessageTemplates_pkey";
ALTER TABLE IF EXISTS ONLY public."RiskConfigs" DROP CONSTRAINT IF EXISTS "RiskConfigs_pkey";
ALTER TABLE IF EXISTS ONLY public."RiskConfigs" DROP CONSTRAINT IF EXISTS "RiskConfigs_company_queue_unique";
ALTER TABLE IF EXISTS ONLY public."Ratings" DROP CONSTRAINT IF EXISTS "Ratings_pkey";
ALTER TABLE IF EXISTS ONLY public."RatingsOptions" DROP CONSTRAINT IF EXISTS "RatingsOptions_pkey";
ALTER TABLE IF EXISTS ONLY public."QuickMessages" DROP CONSTRAINT IF EXISTS "QuickMessages_pkey";
ALTER TABLE IF EXISTS ONLY public."Queues" DROP CONSTRAINT IF EXISTS "Queues_pkey";
ALTER TABLE IF EXISTS ONLY public."Queues" DROP CONSTRAINT IF EXISTS "Queues_name_key";
ALTER TABLE IF EXISTS ONLY public."Queues" DROP CONSTRAINT IF EXISTS "Queues_color_key";
ALTER TABLE IF EXISTS ONLY public."QueueOptions" DROP CONSTRAINT IF EXISTS "QueueOptions_pkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossiers" DROP CONSTRAINT IF EXISTS "ProfessionalDossiers_pkey";
ALTER TABLE IF EXISTS ONLY public."ProfessionalDossierDocuments" DROP CONSTRAINT IF EXISTS "ProfessionalDossierDocuments_pkey";
ALTER TABLE IF EXISTS ONLY public."Plans" DROP CONSTRAINT IF EXISTS "Plans_pkey";
ALTER TABLE IF EXISTS ONLY public."Plans" DROP CONSTRAINT IF EXISTS "Plans_name_key";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaigns" DROP CONSTRAINT IF EXISTS "OfficialCampaigns_pkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShippings" DROP CONSTRAINT IF EXISTS "OfficialCampaignShippings_pkey";
ALTER TABLE IF EXISTS ONLY public."OfficialCampaignShipping" DROP CONSTRAINT IF EXISTS "OfficialCampaignShipping_pkey";
ALTER TABLE IF EXISTS ONLY public."MsgTelegram" DROP CONSTRAINT IF EXISTS "MsgTelegram_pkey";
ALTER TABLE IF EXISTS ONLY public."Messages" DROP CONSTRAINT IF EXISTS "Messages_pkey";
ALTER TABLE IF EXISTS ONLY public."MessageTemplates" DROP CONSTRAINT IF EXISTS "MessageTemplates_pkey";
ALTER TABLE IF EXISTS ONLY public."MessageRecoveryRuns" DROP CONSTRAINT IF EXISTS "MessageRecoveryRuns_pkey";
ALTER TABLE IF EXISTS ONLY public."McpTokens" DROP CONSTRAINT IF EXISTS "McpTokens_pkey";
ALTER TABLE IF EXISTS ONLY public."LuxuryContactMemories" DROP CONSTRAINT IF EXISTS "LuxuryContactMemories_pkey";
ALTER TABLE IF EXISTS ONLY public."LuxuryContactMemories" DROP CONSTRAINT IF EXISTS "LuxuryContactMemories_companyId_contactId_key";
ALTER TABLE IF EXISTS ONLY public."Licenses" DROP CONSTRAINT IF EXISTS "Licenses_pkey";
ALTER TABLE IF EXISTS ONLY public."Licenses" DROP CONSTRAINT IF EXISTS "Licenses_key_key";
ALTER TABLE IF EXISTS ONLY public."LgpdExecutions" DROP CONSTRAINT IF EXISTS "LgpdExecutions_pkey";
ALTER TABLE IF EXISTS ONLY public."LeadHunterCampaigns" DROP CONSTRAINT IF EXISTS "LeadHunterCampaigns_pkey";
ALTER TABLE IF EXISTS ONLY public."LayoutPresets" DROP CONSTRAINT IF EXISTS "LayoutPresets_pkey";
ALTER TABLE IF EXISTS ONLY public."LLMProviderConfigs" DROP CONSTRAINT IF EXISTS "LLMProviderConfigs_pkey";
ALTER TABLE IF EXISTS ONLY public."LLMProviderConfigs" DROP CONSTRAINT IF EXISTS "LLMProviderConfigs_companyId_provider_key";
ALTER TABLE IF EXISTS ONLY public."KnowledgeSources" DROP CONSTRAINT IF EXISTS "KnowledgeSources_pkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeJobs" DROP CONSTRAINT IF EXISTS "KnowledgeJobs_pkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeEntities" DROP CONSTRAINT IF EXISTS "KnowledgeEntities_pkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeChunks" DROP CONSTRAINT IF EXISTS "KnowledgeChunks_pkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeArticles" DROP CONSTRAINT IF EXISTS "KnowledgeArticles_pkey";
ALTER TABLE IF EXISTS ONLY public."KnowledgeAccessLogs" DROP CONSTRAINT IF EXISTS "KnowledgeAccessLogs_pkey";
ALTER TABLE IF EXISTS ONLY public."KipflowQueries" DROP CONSTRAINT IF EXISTS "KipflowQueries_pkey";
ALTER TABLE IF EXISTS ONLY public."Invoices" DROP CONSTRAINT IF EXISTS "Invoices_pkey";
ALTER TABLE IF EXISTS ONLY public."Integrations" DROP CONSTRAINT IF EXISTS "Integrations_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureServers" DROP CONSTRAINT IF EXISTS "InfrastructureServers_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureServers" DROP CONSTRAINT IF EXISTS "InfrastructureServers_machineId_key";
ALTER TABLE IF EXISTS ONLY public."InfrastructureReleases" DROP CONSTRAINT IF EXISTS "InfrastructureReleases_version_key";
ALTER TABLE IF EXISTS ONLY public."InfrastructureReleases" DROP CONSTRAINT IF EXISTS "InfrastructureReleases_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_whiteLabelId_key";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_slug_key";
ALTER TABLE IF EXISTS ONLY public."InfrastructureInstallations" DROP CONSTRAINT IF EXISTS "InfrastructureInstallations_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureDeployments" DROP CONSTRAINT IF EXISTS "InfrastructureDeployments_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureBackups" DROP CONSTRAINT IF EXISTS "InfrastructureBackups_pkey";
ALTER TABLE IF EXISTS ONLY public."InfrastructureAudits" DROP CONSTRAINT IF EXISTS "InfrastructureAudits_pkey";
ALTER TABLE IF EXISTS ONLY public."Incidents" DROP CONSTRAINT IF EXISTS "Incidents_pkey";
ALTER TABLE IF EXISTS ONLY public."Helps" DROP CONSTRAINT IF EXISTS "Helps_pkey";
ALTER TABLE IF EXISTS ONLY public."GroupContacts" DROP CONSTRAINT IF EXISTS "GroupContacts_pkey";
ALTER TABLE IF EXISTS ONLY public."GraphNodes" DROP CONSTRAINT IF EXISTS "GraphNodes_pkey";
ALTER TABLE IF EXISTS ONLY public."GraphEdges" DROP CONSTRAINT IF EXISTS "GraphEdges_pkey";
ALTER TABLE IF EXISTS ONLY public."FollowUpFlows" DROP CONSTRAINT IF EXISTS "FollowUpFlows_pkey";
ALTER TABLE IF EXISTS ONLY public."FollowUpEvents" DROP CONSTRAINT IF EXISTS "FollowUpEvents_pkey";
ALTER TABLE IF EXISTS ONLY public."FollowUpEnrollments" DROP CONSTRAINT IF EXISTS "FollowUpEnrollments_pkey";
ALTER TABLE IF EXISTS ONLY public."FinanceInvoices" DROP CONSTRAINT IF EXISTS "FinanceInvoices_pkey";
ALTER TABLE IF EXISTS ONLY public."FinanceConfigs" DROP CONSTRAINT IF EXISTS "FinanceConfigs_pkey";
ALTER TABLE IF EXISTS ONLY public."ExternalIntegrationQueries" DROP CONSTRAINT IF EXISTS "ExternalIntegrationQueries_pkey";
ALTER TABLE IF EXISTS ONLY public."Eventos" DROP CONSTRAINT IF EXISTS "Eventos_pkey";
ALTER TABLE IF EXISTS ONLY public."Escorts" DROP CONSTRAINT IF EXISTS "Escorts_pkey";
ALTER TABLE IF EXISTS ONLY public."EscortMedia" DROP CONSTRAINT IF EXISTS "EscortMedia_pkey";
ALTER TABLE IF EXISTS ONLY public."Emails" DROP CONSTRAINT IF EXISTS "Emails_pkey";
ALTER TABLE IF EXISTS ONLY public."EmailIntegrations" DROP CONSTRAINT IF EXISTS "EmailIntegrations_pkey";
ALTER TABLE IF EXISTS ONLY public."DialogChatBots" DROP CONSTRAINT IF EXISTS "DialogChatBots_pkey";
ALTER TABLE IF EXISTS ONLY public."CreditTransactions" DROP CONSTRAINT IF EXISTS "CreditTransactions_pkey";
ALTER TABLE IF EXISTS ONLY public."Contacts" DROP CONSTRAINT IF EXISTS "Contacts_pkey";
ALTER TABLE IF EXISTS ONLY public."ContactRoles" DROP CONSTRAINT IF EXISTS "ContactRoles_pkey";
ALTER TABLE IF EXISTS ONLY public."ContactLists" DROP CONSTRAINT IF EXISTS "ContactLists_pkey";
ALTER TABLE IF EXISTS ONLY public."ContactListItems" DROP CONSTRAINT IF EXISTS "ContactListItems_pkey";
ALTER TABLE IF EXISTS ONLY public."ContactCustomFields" DROP CONSTRAINT IF EXISTS "ContactCustomFields_pkey";
ALTER TABLE IF EXISTS ONLY public."CompanyWebhookSecrets" DROP CONSTRAINT IF EXISTS "CompanyWebhookSecrets_pkey";
ALTER TABLE IF EXISTS ONLY public."CompanyWebhookSecrets" DROP CONSTRAINT IF EXISTS "CompanyWebhookSecrets_companyId_key";
ALTER TABLE IF EXISTS ONLY public."Companies" DROP CONSTRAINT IF EXISTS "Companies_pkey";
ALTER TABLE IF EXISTS ONLY public."Companies" DROP CONSTRAINT IF EXISTS "Companies_name_key";
ALTER TABLE IF EXISTS ONLY public."Chats" DROP CONSTRAINT IF EXISTS "Chats_pkey";
ALTER TABLE IF EXISTS ONLY public."Chatbots" DROP CONSTRAINT IF EXISTS "Chatbots_pkey";
ALTER TABLE IF EXISTS ONLY public."ChatUsers" DROP CONSTRAINT IF EXISTS "ChatUsers_pkey";
ALTER TABLE IF EXISTS ONLY public."ChatMessages" DROP CONSTRAINT IF EXISTS "ChatMessages_pkey";
ALTER TABLE IF EXISTS ONLY public."Campaigns" DROP CONSTRAINT IF EXISTS "Campaigns_pkey";
ALTER TABLE IF EXISTS ONLY public."CampaignShipping" DROP CONSTRAINT IF EXISTS "CampaignShipping_pkey";
ALTER TABLE IF EXISTS ONLY public."CampaignSettings" DROP CONSTRAINT IF EXISTS "CampaignSettings_pkey";
ALTER TABLE IF EXISTS ONLY public."Baileys" DROP CONSTRAINT IF EXISTS "Baileys_pkey";
ALTER TABLE IF EXISTS ONLY public."AutomationRuns" DROP CONSTRAINT IF EXISTS "AutomationRuns_pkey";
ALTER TABLE IF EXISTS ONLY public."AutomationRules" DROP CONSTRAINT IF EXISTS "AutomationRules_pkey";
ALTER TABLE IF EXISTS ONLY public."AuditLogs" DROP CONSTRAINT IF EXISTS "AuditLogs_pkey";
ALTER TABLE IF EXISTS ONLY public."ApiUsages" DROP CONSTRAINT IF EXISTS "ApiUsages_pkey";
ALTER TABLE IF EXISTS ONLY public."ApiRequests" DROP CONSTRAINT IF EXISTS "ApiRequests_pkey";
ALTER TABLE IF EXISTS ONLY public."Announcements" DROP CONSTRAINT IF EXISTS "Announcements_pkey";
ALTER TABLE IF EXISTS ONLY public."AgentGlossary" DROP CONSTRAINT IF EXISTS "AgentGlossary_pkey";
ALTER TABLE IF EXISTS ONLY public."AgendamentoEmails" DROP CONSTRAINT IF EXISTS "AgendamentoEmails_pkey";
ALTER TABLE IF EXISTS ONLY public."AIExecutionLogs" DROP CONSTRAINT IF EXISTS "AIExecutionLogs_pkey";
ALTER TABLE IF EXISTS public.proxies ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.baileys_stores ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."WhiteLabels" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Whatsapps" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."WhatsappTemplates" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."WhatsMeowSessions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."WebhookEndpoints" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Users" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."UserRatings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Tickets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TicketTraking" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TicketNotes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TicketMediaDeliveries" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TelegramBots" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Tasks" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Tags" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Subscriptions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Settings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Schedules" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."SGPMessageTemplates" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."RiskConfigs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."RatingsOptions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Ratings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."QuickMessages" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Queues" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."QueueOptions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProfessionalDossiers" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProfessionalDossierDocuments" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Plans" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OfficialCampaigns" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OfficialCampaignShippings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OfficialCampaignShipping" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."MsgTelegram" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."MessageTemplates" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."MessageRecoveryRuns" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."McpTokens" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LuxuryContactMemories" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Licenses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LgpdExecutions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LeadHunterCampaigns" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LayoutPresets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LLMProviderConfigs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeSources" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeJobs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeEntities" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeChunks" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeArticles" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KnowledgeAccessLogs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."KipflowQueries" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Invoices" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Integrations" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Incidents" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Helps" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."GroupContacts" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."GraphNodes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."GraphEdges" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FollowUpFlows" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FollowUpEvents" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FollowUpEnrollments" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FinanceInvoices" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FinanceConfigs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ExternalIntegrationQueries" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Eventos" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Escorts" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EscortMedia" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Emails" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EmailIntegrations" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DialogChatBots" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."CreditTransactions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Contacts" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ContactRoles" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ContactLists" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ContactListItems" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ContactCustomFields" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."CompanyWebhookSecrets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Companies" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Chats" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Chatbots" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ChatUsers" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ChatMessages" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Campaigns" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."CampaignShipping" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."CampaignSettings" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Baileys" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AutomationRuns" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AutomationRules" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AuditLogs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ApiUsages" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ApiRequests" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Announcements" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AgentGlossary" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AgendamentoEmails" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AIExecutionLogs" ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.schema_migrations;
DROP SEQUENCE IF EXISTS public.proxies_id_seq;
DROP TABLE IF EXISTS public.proxies;
DROP SEQUENCE IF EXISTS public.baileys_stores_id_seq;
DROP TABLE IF EXISTS public.baileys_stores;
DROP SEQUENCE IF EXISTS public."WhiteLabels_id_seq";
DROP TABLE IF EXISTS public."WhiteLabels";
DROP SEQUENCE IF EXISTS public."Whatsapps_id_seq";
DROP TABLE IF EXISTS public."Whatsapps";
DROP SEQUENCE IF EXISTS public."WhatsappTemplates_id_seq";
DROP TABLE IF EXISTS public."WhatsappTemplates";
DROP TABLE IF EXISTS public."WhatsappQueues";
DROP SEQUENCE IF EXISTS public."WhatsMeowSessions_id_seq";
DROP TABLE IF EXISTS public."WhatsMeowSessions";
DROP SEQUENCE IF EXISTS public."WebhookEndpoints_id_seq";
DROP TABLE IF EXISTS public."WebhookEndpoints";
DROP SEQUENCE IF EXISTS public."Users_id_seq";
DROP TABLE IF EXISTS public."Users";
DROP TABLE IF EXISTS public."UserWhatsapps";
DROP SEQUENCE IF EXISTS public."UserRatings_id_seq";
DROP TABLE IF EXISTS public."UserRatings";
DROP TABLE IF EXISTS public."UserQueues";
DROP SEQUENCE IF EXISTS public."Tickets_id_seq";
DROP TABLE IF EXISTS public."Tickets";
DROP SEQUENCE IF EXISTS public."TicketTraking_id_seq";
DROP TABLE IF EXISTS public."TicketTraking";
DROP TABLE IF EXISTS public."TicketTags";
DROP SEQUENCE IF EXISTS public."TicketNotes_id_seq";
DROP TABLE IF EXISTS public."TicketNotes";
DROP SEQUENCE IF EXISTS public."TicketMediaDeliveries_id_seq";
DROP TABLE IF EXISTS public."TicketMediaDeliveries";
DROP SEQUENCE IF EXISTS public."TelegramBots_id_seq";
DROP TABLE IF EXISTS public."TelegramBots";
DROP SEQUENCE IF EXISTS public."Tasks_id_seq";
DROP TABLE IF EXISTS public."Tasks";
DROP SEQUENCE IF EXISTS public."Tags_id_seq";
DROP TABLE IF EXISTS public."Tags";
DROP SEQUENCE IF EXISTS public."Subscriptions_id_seq";
DROP TABLE IF EXISTS public."Subscriptions";
DROP SEQUENCE IF EXISTS public."Settings_id_seq";
DROP TABLE IF EXISTS public."Settings";
DROP TABLE IF EXISTS public."SequelizeMeta";
DROP SEQUENCE IF EXISTS public."Schedules_id_seq";
DROP TABLE IF EXISTS public."Schedules";
DROP SEQUENCE IF EXISTS public."SGPMessageTemplates_id_seq";
DROP TABLE IF EXISTS public."SGPMessageTemplates";
DROP SEQUENCE IF EXISTS public."RiskConfigs_id_seq";
DROP TABLE IF EXISTS public."RiskConfigs";
DROP SEQUENCE IF EXISTS public."Ratings_id_seq";
DROP SEQUENCE IF EXISTS public."RatingsOptions_id_seq";
DROP TABLE IF EXISTS public."RatingsOptions";
DROP TABLE IF EXISTS public."Ratings";
DROP SEQUENCE IF EXISTS public."QuickMessages_id_seq";
DROP TABLE IF EXISTS public."QuickMessages";
DROP SEQUENCE IF EXISTS public."Queues_id_seq";
DROP TABLE IF EXISTS public."Queues";
DROP SEQUENCE IF EXISTS public."QueueOptions_id_seq";
DROP TABLE IF EXISTS public."QueueOptions";
DROP SEQUENCE IF EXISTS public."ProfessionalDossiers_id_seq";
DROP TABLE IF EXISTS public."ProfessionalDossiers";
DROP SEQUENCE IF EXISTS public."ProfessionalDossierDocuments_id_seq";
DROP TABLE IF EXISTS public."ProfessionalDossierDocuments";
DROP SEQUENCE IF EXISTS public."Plans_id_seq";
DROP TABLE IF EXISTS public."Plans";
DROP SEQUENCE IF EXISTS public."OfficialCampaigns_id_seq";
DROP TABLE IF EXISTS public."OfficialCampaigns";
DROP SEQUENCE IF EXISTS public."OfficialCampaignShippings_id_seq";
DROP TABLE IF EXISTS public."OfficialCampaignShippings";
DROP SEQUENCE IF EXISTS public."OfficialCampaignShipping_id_seq";
DROP TABLE IF EXISTS public."OfficialCampaignShipping";
DROP SEQUENCE IF EXISTS public."MsgTelegram_id_seq";
DROP TABLE IF EXISTS public."MsgTelegram";
DROP TABLE IF EXISTS public."Messages";
DROP SEQUENCE IF EXISTS public."MessageTemplates_id_seq";
DROP TABLE IF EXISTS public."MessageTemplates";
DROP SEQUENCE IF EXISTS public."MessageRecoveryRuns_id_seq";
DROP TABLE IF EXISTS public."MessageRecoveryRuns";
DROP SEQUENCE IF EXISTS public."McpTokens_id_seq";
DROP TABLE IF EXISTS public."McpTokens";
DROP SEQUENCE IF EXISTS public."LuxuryContactMemories_id_seq";
DROP TABLE IF EXISTS public."LuxuryContactMemories";
DROP SEQUENCE IF EXISTS public."Licenses_id_seq";
DROP TABLE IF EXISTS public."Licenses";
DROP SEQUENCE IF EXISTS public."LgpdExecutions_id_seq";
DROP TABLE IF EXISTS public."LgpdExecutions";
DROP SEQUENCE IF EXISTS public."LeadHunterCampaigns_id_seq";
DROP TABLE IF EXISTS public."LeadHunterCampaigns";
DROP SEQUENCE IF EXISTS public."LayoutPresets_id_seq";
DROP TABLE IF EXISTS public."LayoutPresets";
DROP SEQUENCE IF EXISTS public."LLMProviderConfigs_id_seq";
DROP TABLE IF EXISTS public."LLMProviderConfigs";
DROP SEQUENCE IF EXISTS public."KnowledgeSources_id_seq";
DROP TABLE IF EXISTS public."KnowledgeSources";
DROP SEQUENCE IF EXISTS public."KnowledgeJobs_id_seq";
DROP TABLE IF EXISTS public."KnowledgeJobs";
DROP SEQUENCE IF EXISTS public."KnowledgeEntities_id_seq";
DROP TABLE IF EXISTS public."KnowledgeEntities";
DROP SEQUENCE IF EXISTS public."KnowledgeChunks_id_seq";
DROP TABLE IF EXISTS public."KnowledgeChunks";
DROP SEQUENCE IF EXISTS public."KnowledgeArticles_id_seq";
DROP TABLE IF EXISTS public."KnowledgeArticles";
DROP SEQUENCE IF EXISTS public."KnowledgeAccessLogs_id_seq";
DROP TABLE IF EXISTS public."KnowledgeAccessLogs";
DROP SEQUENCE IF EXISTS public."KipflowQueries_id_seq";
DROP TABLE IF EXISTS public."KipflowQueries";
DROP SEQUENCE IF EXISTS public."Invoices_id_seq";
DROP TABLE IF EXISTS public."Invoices";
DROP SEQUENCE IF EXISTS public."Integrations_id_seq";
DROP TABLE IF EXISTS public."Integrations";
DROP TABLE IF EXISTS public."InfrastructureServers";
DROP TABLE IF EXISTS public."InfrastructureReleases";
DROP TABLE IF EXISTS public."InfrastructureInstallations";
DROP TABLE IF EXISTS public."InfrastructureDeployments";
DROP TABLE IF EXISTS public."InfrastructureBackups";
DROP TABLE IF EXISTS public."InfrastructureAudits";
DROP SEQUENCE IF EXISTS public."Incidents_id_seq";
DROP TABLE IF EXISTS public."Incidents";
DROP SEQUENCE IF EXISTS public."Helps_id_seq";
DROP TABLE IF EXISTS public."Helps";
DROP SEQUENCE IF EXISTS public."GroupContacts_id_seq";
DROP TABLE IF EXISTS public."GroupContacts";
DROP SEQUENCE IF EXISTS public."GraphNodes_id_seq";
DROP TABLE IF EXISTS public."GraphNodes";
DROP SEQUENCE IF EXISTS public."GraphEdges_id_seq";
DROP TABLE IF EXISTS public."GraphEdges";
DROP SEQUENCE IF EXISTS public."FollowUpFlows_id_seq";
DROP TABLE IF EXISTS public."FollowUpFlows";
DROP SEQUENCE IF EXISTS public."FollowUpEvents_id_seq";
DROP TABLE IF EXISTS public."FollowUpEvents";
DROP SEQUENCE IF EXISTS public."FollowUpEnrollments_id_seq";
DROP TABLE IF EXISTS public."FollowUpEnrollments";
DROP SEQUENCE IF EXISTS public."FinanceInvoices_id_seq";
DROP TABLE IF EXISTS public."FinanceInvoices";
DROP SEQUENCE IF EXISTS public."FinanceConfigs_id_seq";
DROP TABLE IF EXISTS public."FinanceConfigs";
DROP SEQUENCE IF EXISTS public."ExternalIntegrationQueries_id_seq";
DROP TABLE IF EXISTS public."ExternalIntegrationQueries";
DROP SEQUENCE IF EXISTS public."Eventos_id_seq";
DROP TABLE IF EXISTS public."Eventos";
DROP SEQUENCE IF EXISTS public."Escorts_id_seq";
DROP TABLE IF EXISTS public."Escorts";
DROP SEQUENCE IF EXISTS public."EscortMedia_id_seq";
DROP TABLE IF EXISTS public."EscortMedia";
DROP SEQUENCE IF EXISTS public."Emails_id_seq";
DROP TABLE IF EXISTS public."Emails";
DROP SEQUENCE IF EXISTS public."EmailIntegrations_id_seq";
DROP TABLE IF EXISTS public."EmailIntegrations";
DROP SEQUENCE IF EXISTS public."DialogChatBots_id_seq";
DROP TABLE IF EXISTS public."DialogChatBots";
DROP SEQUENCE IF EXISTS public."CreditTransactions_id_seq";
DROP TABLE IF EXISTS public."CreditTransactions";
DROP SEQUENCE IF EXISTS public."Contacts_id_seq";
DROP TABLE IF EXISTS public."Contacts";
DROP SEQUENCE IF EXISTS public."ContactRoles_id_seq";
DROP TABLE IF EXISTS public."ContactRoles";
DROP SEQUENCE IF EXISTS public."ContactLists_id_seq";
DROP TABLE IF EXISTS public."ContactLists";
DROP SEQUENCE IF EXISTS public."ContactListItems_id_seq";
DROP TABLE IF EXISTS public."ContactListItems";
DROP SEQUENCE IF EXISTS public."ContactCustomFields_id_seq";
DROP TABLE IF EXISTS public."ContactCustomFields";
DROP SEQUENCE IF EXISTS public."CompanyWebhookSecrets_id_seq";
DROP TABLE IF EXISTS public."CompanyWebhookSecrets";
DROP SEQUENCE IF EXISTS public."Companies_id_seq";
DROP TABLE IF EXISTS public."Companies";
DROP SEQUENCE IF EXISTS public."Chats_id_seq";
DROP TABLE IF EXISTS public."Chats";
DROP SEQUENCE IF EXISTS public."Chatbots_id_seq";
DROP TABLE IF EXISTS public."Chatbots";
DROP SEQUENCE IF EXISTS public."ChatUsers_id_seq";
DROP TABLE IF EXISTS public."ChatUsers";
DROP SEQUENCE IF EXISTS public."ChatMessages_id_seq";
DROP TABLE IF EXISTS public."ChatMessages";
DROP SEQUENCE IF EXISTS public."Campaigns_id_seq";
DROP TABLE IF EXISTS public."Campaigns";
DROP SEQUENCE IF EXISTS public."CampaignShipping_id_seq";
DROP TABLE IF EXISTS public."CampaignShipping";
DROP SEQUENCE IF EXISTS public."CampaignSettings_id_seq";
DROP TABLE IF EXISTS public."CampaignSettings";
DROP SEQUENCE IF EXISTS public."Baileys_id_seq";
DROP TABLE IF EXISTS public."Baileys";
DROP SEQUENCE IF EXISTS public."AutomationRuns_id_seq";
DROP TABLE IF EXISTS public."AutomationRuns";
DROP SEQUENCE IF EXISTS public."AutomationRules_id_seq";
DROP TABLE IF EXISTS public."AutomationRules";
DROP SEQUENCE IF EXISTS public."AuditLogs_id_seq";
DROP TABLE IF EXISTS public."AuditLogs";
DROP SEQUENCE IF EXISTS public."ApiUsages_id_seq";
DROP TABLE IF EXISTS public."ApiUsages";
DROP SEQUENCE IF EXISTS public."ApiRequests_id_seq";
DROP TABLE IF EXISTS public."ApiRequests";
DROP SEQUENCE IF EXISTS public."Announcements_id_seq";
DROP TABLE IF EXISTS public."Announcements";
DROP SEQUENCE IF EXISTS public."AgentGlossary_id_seq";
DROP TABLE IF EXISTS public."AgentGlossary";
DROP SEQUENCE IF EXISTS public."AgendamentoEmails_id_seq";
DROP TABLE IF EXISTS public."AgendamentoEmails";
DROP SEQUENCE IF EXISTS public."AIExecutionLogs_id_seq";
DROP TABLE IF EXISTS public."AIExecutionLogs";
DROP TYPE IF EXISTS public."enum_OfficialCampaigns_campaignType";
DROP EXTENSION IF EXISTS "uuid-ossp";
--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: enum_OfficialCampaigns_campaignType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."enum_OfficialCampaigns_campaignType" AS ENUM (
    'OFFICIAL',
    'BAILEYS'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AIExecutionLogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AIExecutionLogs" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "ticketId" bigint,
    function character varying(100) NOT NULL,
    provider character varying(100) NOT NULL,
    model character varying(200) NOT NULL,
    "latencyMs" bigint DEFAULT 0,
    "inputTokens" integer DEFAULT 0,
    "outputTokens" integer DEFAULT 0,
    "estimatedCost" numeric(10,6) DEFAULT 0,
    "usedFallback" boolean DEFAULT false,
    "knowledgeSources" jsonb DEFAULT '[]'::jsonb,
    "toolsCalled" jsonb DEFAULT '[]'::jsonb,
    error text DEFAULT ''::text,
    "createdAt" timestamp with time zone DEFAULT now()
);


--
-- Name: AIExecutionLogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AIExecutionLogs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AIExecutionLogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AIExecutionLogs_id_seq" OWNED BY public."AIExecutionLogs".id;


--
-- Name: AgendamentoEmails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AgendamentoEmails" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    message text,
    "dataAgendamento" timestamp with time zone NOT NULL,
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: AgendamentoEmails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AgendamentoEmails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AgendamentoEmails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AgendamentoEmails_id_seq" OWNED BY public."AgendamentoEmails".id;


--
-- Name: AgentGlossary; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AgentGlossary" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    phrase character varying(255) NOT NULL,
    expansion character varying(500) NOT NULL,
    kind character varying(50) DEFAULT 'typo'::character varying NOT NULL,
    weight integer DEFAULT 1 NOT NULL,
    "addedBy" bigint DEFAULT 0,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now()
);


--
-- Name: AgentGlossary_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AgentGlossary_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AgentGlossary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AgentGlossary_id_seq" OWNED BY public."AgentGlossary".id;


--
-- Name: Announcements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Announcements" (
    id integer NOT NULL,
    priority integer,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    status boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Announcements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Announcements_id_seq" OWNED BY public."Announcements".id;


--
-- Name: ApiRequests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ApiRequests" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    description text,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ApiRequests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ApiRequests_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ApiRequests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ApiRequests_id_seq" OWNED BY public."ApiRequests".id;


--
-- Name: ApiUsages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ApiUsages" (
    id integer NOT NULL,
    "companyId" integer DEFAULT 0,
    "dateUsed" text NOT NULL,
    "UsedOnDay" integer DEFAULT 0,
    "usedText" integer DEFAULT 0,
    "usedPDF" integer DEFAULT 0,
    "usedImage" integer DEFAULT 0,
    "usedVideo" integer DEFAULT 0,
    "usedOther" integer DEFAULT 0,
    "usedCheckNumber" integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ApiUsages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ApiUsages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ApiUsages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ApiUsages_id_seq" OWNED BY public."ApiUsages".id;


--
-- Name: AuditLogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AuditLogs" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "actorId" integer,
    "actorName" character varying(255) DEFAULT 'Sistema'::character varying NOT NULL,
    "actorProfile" character varying(255) DEFAULT 'system'::character varying NOT NULL,
    action character varying(255) NOT NULL,
    "entityType" character varying(255) NOT NULL,
    "entityId" character varying(255) NOT NULL,
    summary text NOT NULL,
    "previousData" json,
    "newData" json,
    metadata json,
    "createdAt" timestamp with time zone NOT NULL
);


--
-- Name: AuditLogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AuditLogs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AuditLogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AuditLogs_id_seq" OWNED BY public."AuditLogs".id;


--
-- Name: AutomationRules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AutomationRules" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    trigger text DEFAULT 'message.received'::text NOT NULL,
    conditions jsonb DEFAULT '[]'::jsonb NOT NULL,
    actions jsonb DEFAULT '[]'::jsonb NOT NULL,
    "cooldownSeconds" integer DEFAULT 0 NOT NULL,
    "lastRunAt" timestamp with time zone,
    "runCount" integer DEFAULT 0 NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: AutomationRules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AutomationRules_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AutomationRules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AutomationRules_id_seq" OWNED BY public."AutomationRules".id;


--
-- Name: AutomationRuns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AutomationRuns" (
    id bigint NOT NULL,
    "ruleId" bigint NOT NULL,
    "companyId" bigint NOT NULL,
    trigger text DEFAULT ''::text NOT NULL,
    "entityType" text DEFAULT ''::text NOT NULL,
    "entityId" bigint DEFAULT 0 NOT NULL,
    outcome text DEFAULT 'success'::text NOT NULL,
    detail text DEFAULT ''::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: AutomationRuns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AutomationRuns_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AutomationRuns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AutomationRuns_id_seq" OWNED BY public."AutomationRuns".id;


--
-- Name: Baileys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Baileys" (
    id integer NOT NULL,
    "whatsappId" integer NOT NULL,
    contacts jsonb,
    chats jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Baileys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Baileys_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Baileys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Baileys_id_seq" OWNED BY public."Baileys".id;


--
-- Name: CampaignSettings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CampaignSettings" (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: CampaignSettings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CampaignSettings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CampaignSettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CampaignSettings_id_seq" OWNED BY public."CampaignSettings".id;


--
-- Name: CampaignShipping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CampaignShipping" (
    id integer NOT NULL,
    "jobId" character varying(255),
    number character varying(255) NOT NULL,
    message text NOT NULL,
    "confirmationMessage" text,
    confirmation boolean,
    "contactId" integer,
    "campaignId" integer NOT NULL,
    "confirmationRequestedAt" timestamp with time zone,
    "confirmedAt" timestamp with time zone,
    "deliveredAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: CampaignShipping_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CampaignShipping_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CampaignShipping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CampaignShipping_id_seq" OWNED BY public."CampaignShipping".id;


--
-- Name: Campaigns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Campaigns" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    message1 text DEFAULT ''::text,
    message2 text DEFAULT ''::text,
    message3 text DEFAULT ''::text,
    message4 text DEFAULT ''::text,
    message5 text DEFAULT ''::text,
    "confirmationMessage1" text DEFAULT ''::text,
    "confirmationMessage2" text DEFAULT ''::text,
    "confirmationMessage3" text DEFAULT ''::text,
    "confirmationMessage4" text DEFAULT ''::text,
    "confirmationMessage5" text DEFAULT ''::text,
    status character varying(255),
    confirmation boolean DEFAULT false,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    "contactListId" integer,
    "whatsappId" integer,
    "scheduledAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Campaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Campaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Campaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Campaigns_id_seq" OWNED BY public."Campaigns".id;


--
-- Name: ChatMessages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ChatMessages" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "senderId" integer NOT NULL,
    message text DEFAULT ''::text,
    "mediaPath" text,
    "mediaName" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "mediaType" character varying(255)
);


--
-- Name: ChatMessages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ChatMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ChatMessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ChatMessages_id_seq" OWNED BY public."ChatMessages".id;


--
-- Name: ChatUsers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ChatUsers" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "userId" integer NOT NULL,
    unreads integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ChatUsers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ChatUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ChatUsers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ChatUsers_id_seq" OWNED BY public."ChatUsers".id;


--
-- Name: Chatbots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Chatbots" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "queueId" integer,
    "chatbotId" integer,
    "greetingMessage" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "isAgent" boolean DEFAULT false,
    "optionType" character varying(255) DEFAULT 'text'::character varying
);


--
-- Name: Chatbots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Chatbots_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Chatbots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Chatbots_id_seq" OWNED BY public."Chatbots".id;


--
-- Name: Chats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Chats" (
    id integer NOT NULL,
    title text DEFAULT ''::text,
    uuid character varying(255) DEFAULT ''::character varying,
    "ownerId" integer NOT NULL,
    "lastMessage" text,
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Chats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Chats_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Chats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Chats_id_seq" OWNED BY public."Chats".id;


--
-- Name: Companies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Companies" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "planId" integer,
    status boolean DEFAULT true,
    schedules jsonb DEFAULT '[]'::jsonb,
    "dueDate" timestamp with time zone,
    recurrence character varying(255) DEFAULT ''::character varying,
    document character varying(255) DEFAULT ''::character varying,
    "paymentMethod" character varying(255) DEFAULT ''::character varying,
    "lastLogin" timestamp with time zone,
    credits numeric(10,2) DEFAULT 0 NOT NULL,
    "businessSegment" character varying(255) DEFAULT 'general'::character varying NOT NULL
);


--
-- Name: Companies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;


--
-- Name: CompanyWebhookSecrets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CompanyWebhookSecrets" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    secret text DEFAULT ''::text NOT NULL,
    "regenCount" integer DEFAULT 0 NOT NULL,
    "regenMonthStart" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: CompanyWebhookSecrets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CompanyWebhookSecrets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CompanyWebhookSecrets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CompanyWebhookSecrets_id_seq" OWNED BY public."CompanyWebhookSecrets".id;


--
-- Name: ContactCustomFields; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ContactCustomFields" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    value text,
    "contactId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ContactCustomFields_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ContactCustomFields_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ContactCustomFields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ContactCustomFields_id_seq" OWNED BY public."ContactCustomFields".id;


--
-- Name: ContactListItems; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ContactListItems" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    email character varying(255),
    "contactListId" integer NOT NULL,
    "isWhatsappValid" boolean DEFAULT false,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "contactId" integer
);


--
-- Name: ContactListItems_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ContactListItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ContactListItems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ContactListItems_id_seq" OWNED BY public."ContactListItems".id;


--
-- Name: ContactLists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ContactLists" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ContactLists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ContactLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ContactLists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ContactLists_id_seq" OWNED BY public."ContactLists".id;


--
-- Name: ContactRoles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ContactRoles" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "contactId" integer NOT NULL,
    role character varying(50) NOT NULL,
    "confidenceScore" double precision DEFAULT '0.5'::double precision,
    status character varying(20) DEFAULT 'inferred'::character varying,
    "evidenceTicketIds" integer[] DEFAULT ARRAY[]::integer[],
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT chk_contact_roles_confidence_score CHECK ((("confidenceScore" >= (0.0)::double precision) AND ("confidenceScore" <= (1.0)::double precision))),
    CONSTRAINT chk_contact_roles_role CHECK (((role)::text = ANY ((ARRAY['decisor'::character varying, 'comprador'::character varying, 'aprovador'::character varying, 'reclamante'::character varying, 'influenciador'::character varying])::text[]))),
    CONSTRAINT chk_contact_roles_status CHECK (((status)::text = ANY ((ARRAY['inferred'::character varying, 'confirmed'::character varying])::text[])))
);


--
-- Name: ContactRoles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ContactRoles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ContactRoles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ContactRoles_id_seq" OWNED BY public."ContactRoles".id;


--
-- Name: Contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Contacts" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    "profilePicUrl" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    "isGroup" boolean DEFAULT false NOT NULL,
    "companyId" integer,
    "acceptAudioMessage" boolean DEFAULT true NOT NULL,
    channel text DEFAULT 'whatsapp'::text,
    active boolean DEFAULT true,
    "disableBot" boolean DEFAULT false NOT NULL,
    "typebotToken" character varying(255),
    lid character varying(255),
    "remoteJid" character varying(255),
    "taxId" character varying(255) DEFAULT ''::character varying,
    street character varying(255) DEFAULT ''::character varying,
    "streetNumber" character varying(255) DEFAULT ''::character varying,
    complement character varying(255) DEFAULT ''::character varying,
    district character varying(255) DEFAULT ''::character varying,
    city character varying(255) DEFAULT ''::character varying,
    state character varying(255) DEFAULT ''::character varying,
    zipcode character varying(255) DEFAULT ''::character varying,
    "deletedAt" timestamp with time zone,
    "enrichmentData" jsonb DEFAULT '{}'::jsonb NOT NULL,
    blocked boolean DEFAULT false NOT NULL,
    "anonymizedAt" timestamp with time zone
);


--
-- Name: Contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Contacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Contacts_id_seq" OWNED BY public."Contacts".id;


--
-- Name: CreditTransactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CreditTransactions" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    amount numeric(10,2) NOT NULL,
    type character varying(255) NOT NULL,
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: CreditTransactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."CreditTransactions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: CreditTransactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."CreditTransactions_id_seq" OWNED BY public."CreditTransactions".id;


--
-- Name: DialogChatBots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."DialogChatBots" (
    id integer NOT NULL,
    awaiting integer DEFAULT 0 NOT NULL,
    "contactId" integer,
    "chatbotId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "queueId" integer
);


--
-- Name: DialogChatBots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."DialogChatBots_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: DialogChatBots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."DialogChatBots_id_seq" OWNED BY public."DialogChatBots".id;


--
-- Name: EmailIntegrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EmailIntegrations" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "smtpHost" character varying(255) NOT NULL,
    "smtpPort" integer DEFAULT 587,
    "smtpSecure" boolean DEFAULT false,
    "smtpUser" character varying(255),
    "smtpPassword" text,
    "imapHost" character varying(255),
    "imapPort" integer DEFAULT 993,
    "imapSecure" boolean DEFAULT true,
    "imapUser" character varying(255),
    "imapPassword" text,
    active boolean DEFAULT true,
    "lastTestAt" timestamp with time zone,
    "lastError" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: EmailIntegrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EmailIntegrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EmailIntegrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EmailIntegrations_id_seq" OWNED BY public."EmailIntegrations".id;


--
-- Name: Emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Emails" (
    id integer NOT NULL,
    sender character varying(255),
    subject character varying(255),
    message text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    scheduled boolean,
    "sendAt" timestamp with time zone
);


--
-- Name: Emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Emails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Emails_id_seq" OWNED BY public."Emails".id;


--
-- Name: EscortMedia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EscortMedia" (
    id integer NOT NULL,
    "escortId" integer NOT NULL,
    "companyId" integer NOT NULL,
    type character varying(255) NOT NULL,
    category character varying(255) DEFAULT 'presentation'::character varying NOT NULL,
    "fileUrl" text NOT NULL,
    "originalName" character varying(255) NOT NULL,
    "mimeType" character varying(255) NOT NULL,
    caption text,
    "sortOrder" integer DEFAULT 0 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: EscortMedia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."EscortMedia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EscortMedia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."EscortMedia_id_seq" OWNED BY public."EscortMedia".id;


--
-- Name: Escorts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Escorts" (
    id integer NOT NULL,
    name character varying(255),
    age integer,
    bio text,
    photos json,
    "userId" integer,
    "companyId" integer,
    active boolean DEFAULT true,
    services json,
    cities json,
    location character varying(255),
    "workingHours" text,
    rates json,
    instagram character varying(255),
    telegram character varying(255),
    whatsapp character varying(255),
    verified boolean DEFAULT false,
    ethnicity character varying(255),
    "hairColor" character varying(255),
    "eyeColor" character varying(255),
    height numeric(5,2),
    weight numeric(5,2),
    "aboutMe" text,
    "socialLinks" json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "communicationStyle" text,
    "petNames" json,
    boldness integer DEFAULT 2 NOT NULL,
    boundaries text
);


--
-- Name: Escorts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Escorts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Escorts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Escorts_id_seq" OWNED BY public."Escorts".id;


--
-- Name: Eventos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Eventos" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone NOT NULL,
    concluido boolean DEFAULT false,
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Eventos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Eventos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Eventos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Eventos_id_seq" OWNED BY public."Eventos".id;


--
-- Name: ExternalIntegrationQueries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ExternalIntegrationQueries" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "ticketId" integer,
    "contactId" integer,
    "userId" integer,
    provider character varying(255) NOT NULL,
    operation character varying(255) NOT NULL,
    "identifierHash" character varying(64),
    source character varying(255) DEFAULT 'manual'::character varying NOT NULL,
    status character varying(255) DEFAULT 'success'::character varying NOT NULL,
    cached boolean DEFAULT false NOT NULL,
    "requestData" jsonb,
    "responseData" jsonb,
    "errorMessage" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ExternalIntegrationQueries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ExternalIntegrationQueries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ExternalIntegrationQueries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ExternalIntegrationQueries_id_seq" OWNED BY public."ExternalIntegrationQueries".id;


--
-- Name: FinanceConfigs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FinanceConfigs" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "asaasToken" character varying(255),
    "mercadoPagoToken" character varying(255),
    "reminderDays" character varying(255) DEFAULT '3,1'::character varying,
    "whatsappId" integer,
    "templateBefore" text,
    "templateDue" text,
    "templateOverdue" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "templatePaid" text DEFAULT 'Olá {name}, confirmamos o recebimento do pagamento da sua fatura de R$ {invoice.amount}. Obrigado!'::text,
    "billingNotificationsEnabled" boolean DEFAULT true NOT NULL
);


--
-- Name: FinanceConfigs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FinanceConfigs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FinanceConfigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FinanceConfigs_id_seq" OWNED BY public."FinanceConfigs".id;


--
-- Name: FinanceInvoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FinanceInvoices" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "contactId" integer,
    description character varying(255) NOT NULL,
    amount numeric(10,2) NOT NULL,
    "dueDate" date NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying,
    type character varying(255) DEFAULT 'receivable'::character varying,
    gateway character varying(255) DEFAULT 'manual'::character varying,
    "gatewayId" character varying(255),
    "paymentLink" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "lastReminderSentAt" date,
    "pixQrCode" text,
    "boletoBarcode" text
);


--
-- Name: FinanceInvoices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FinanceInvoices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FinanceInvoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FinanceInvoices_id_seq" OWNED BY public."FinanceInvoices".id;


--
-- Name: FollowUpEnrollments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FollowUpEnrollments" (
    id bigint NOT NULL,
    "flowId" bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "ticketId" bigint NOT NULL,
    "contactId" bigint NOT NULL,
    status text DEFAULT 'active'::text NOT NULL,
    "currentStep" integer DEFAULT 0 NOT NULL,
    "nextRunAt" timestamp with time zone,
    "lastMessageAt" timestamp with time zone,
    attempts integer DEFAULT 0 NOT NULL,
    "lastError" text DEFAULT ''::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: FollowUpEnrollments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FollowUpEnrollments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FollowUpEnrollments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FollowUpEnrollments_id_seq" OWNED BY public."FollowUpEnrollments".id;


--
-- Name: FollowUpEvents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FollowUpEvents" (
    id bigint NOT NULL,
    "enrollmentId" bigint NOT NULL,
    "companyId" bigint NOT NULL,
    event text NOT NULL,
    detail text DEFAULT ''::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: FollowUpEvents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FollowUpEvents_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FollowUpEvents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FollowUpEvents_id_seq" OWNED BY public."FollowUpEvents".id;


--
-- Name: FollowUpFlows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."FollowUpFlows" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    conditions jsonb DEFAULT '{}'::jsonb NOT NULL,
    steps jsonb DEFAULT '[]'::jsonb NOT NULL,
    "maxSteps" integer DEFAULT 5 NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "autoEnroll" boolean DEFAULT false NOT NULL
);


--
-- Name: FollowUpFlows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."FollowUpFlows_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FollowUpFlows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."FollowUpFlows_id_seq" OWNED BY public."FollowUpFlows".id;


--
-- Name: GraphEdges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."GraphEdges" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "sourceNodeId" integer NOT NULL,
    "targetNodeId" integer NOT NULL,
    "relationshipType" character varying(50) NOT NULL,
    weight double precision DEFAULT '0.5'::double precision,
    metadata jsonb DEFAULT '{}'::jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT chk_graph_edges_relationship_type CHECK ((("relationshipType")::text = ANY ((ARRAY['decides_for'::character varying, 'buys_from'::character varying, 'approves_for'::character varying, 'complains_to'::character varying, 'influences'::character varying, 'assigned_to'::character varying, 'belongs_to'::character varying, 'related_to'::character varying])::text[]))),
    CONSTRAINT chk_graph_edges_weight CHECK (((weight >= (0.0)::double precision) AND (weight <= (1.0)::double precision)))
);


--
-- Name: GraphEdges_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."GraphEdges_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: GraphEdges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."GraphEdges_id_seq" OWNED BY public."GraphEdges".id;


--
-- Name: GraphNodes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."GraphNodes" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "nodeType" character varying(50) NOT NULL,
    "entityId" integer NOT NULL,
    label character varying(255),
    metadata jsonb DEFAULT '{}'::jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: GraphNodes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."GraphNodes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: GraphNodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."GraphNodes_id_seq" OWNED BY public."GraphNodes".id;


--
-- Name: GroupContacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."GroupContacts" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    "profilePicUrl" character varying(255) DEFAULT ''::character varying NOT NULL,
    "remoteJid" character varying(255),
    lid character varying(255),
    "disableBot" boolean DEFAULT false NOT NULL,
    "acceptAudioMessage" boolean DEFAULT true NOT NULL,
    active boolean DEFAULT true NOT NULL,
    channel character varying(255) DEFAULT 'whatsapp'::character varying NOT NULL,
    "companyId" integer,
    "typebotToken" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: GroupContacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."GroupContacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: GroupContacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."GroupContacts_id_seq" OWNED BY public."GroupContacts".id;


--
-- Name: Helps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Helps" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    video character varying(255),
    link text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Helps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Helps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Helps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Helps_id_seq" OWNED BY public."Helps".id;


--
-- Name: Incidents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Incidents" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "oltId" bigint NOT NULL,
    "oltName" text,
    slot integer DEFAULT 0 NOT NULL,
    pon integer DEFAULT 0 NOT NULL,
    "ponId" bigint,
    "ctoIdent" text,
    region text,
    "affectedOnus" integer DEFAULT 0 NOT NULL,
    "totalOnus" integer DEFAULT 0 NOT NULL,
    confidence double precision DEFAULT 0 NOT NULL,
    status text DEFAULT 'open'::text NOT NULL,
    "autoNotified" boolean DEFAULT false NOT NULL,
    "notifiedNumbers" jsonb DEFAULT '[]'::jsonb NOT NULL,
    "notifiedAt" timestamp without time zone,
    "resolvedAt" timestamp without time zone,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: Incidents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Incidents_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Incidents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Incidents_id_seq" OWNED BY public."Incidents".id;


--
-- Name: InfrastructureAudits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureAudits" (
    id uuid NOT NULL,
    "userId" integer,
    "companyId" integer,
    "whiteLabelId" integer,
    "serverId" uuid,
    "installationId" uuid,
    action character varying(255) NOT NULL,
    result character varying(255) NOT NULL,
    ip character varying(255),
    version character varying(255),
    "durationMs" integer,
    details json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: InfrastructureBackups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureBackups" (
    id uuid NOT NULL,
    "installationId" uuid NOT NULL,
    status character varying(255) NOT NULL,
    size bigint,
    sha256 character varying(64),
    location character varying(255),
    metadata json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: InfrastructureDeployments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureDeployments" (
    id uuid NOT NULL,
    "installationId" uuid NOT NULL,
    "releaseId" uuid,
    action character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'queued'::character varying NOT NULL,
    command json NOT NULL,
    result json,
    "startedAt" timestamp with time zone,
    "finishedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "idempotencyKey" character varying(255),
    progress integer DEFAULT 0 NOT NULL,
    step character varying(255),
    message text,
    attempt integer DEFAULT 1 NOT NULL
);


--
-- Name: InfrastructureInstallations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureInstallations" (
    id uuid NOT NULL,
    "serverId" uuid,
    "whiteLabelId" integer NOT NULL,
    "licenseId" integer,
    slug character varying(255) NOT NULL,
    model character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    version character varying(255),
    "lastBackupAt" timestamp with time zone,
    "lastUpdatedAt" timestamp with time zone,
    config json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "desiredVersion" character varying(255),
    "previousVersion" character varying(255),
    "provisioningStep" character varying(255) DEFAULT 'created'::character varying NOT NULL,
    "applicationStatus" character varying(255) DEFAULT 'stopped'::character varying NOT NULL,
    health json
);


--
-- Name: InfrastructureReleases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureReleases" (
    id uuid NOT NULL,
    version character varying(255) NOT NULL,
    sha256 character varying(64) NOT NULL,
    "imageDigests" json NOT NULL,
    compatibility json NOT NULL,
    migrations json,
    rollback json,
    notes text,
    signature text NOT NULL,
    "publishedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "environmentTemplate" json
);


--
-- Name: InfrastructureServers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."InfrastructureServers" (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    "machineId" character varying(255),
    fingerprint character varying(255),
    "publicKey" text,
    "agentVersion" character varying(255),
    status character varying(255) DEFAULT 'offline'::character varying NOT NULL,
    "lastHeartbeatAt" timestamp with time zone,
    metrics json,
    "enrollmentTokenHash" character varying(255),
    "agentTokenHash" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "protocolVersion" integer DEFAULT 1 NOT NULL,
    capabilities json
);


--
-- Name: Integrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Integrations" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    name character varying(255) NOT NULL,
    "isActive" boolean DEFAULT false,
    token text,
    "foneContact" character varying(255),
    "userLogin" character varying(255),
    "passLogin" character varying(255),
    "finalCurrentMonth" integer,
    "initialCurrentMonth" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Integrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Integrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Integrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Integrations_id_seq" OWNED BY public."Integrations".id;


--
-- Name: Invoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Invoices" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "dueDate" character varying(255),
    detail character varying(255),
    status character varying(255),
    value double precision,
    users integer DEFAULT 0,
    connections integer DEFAULT 0,
    queues integer DEFAULT 0,
    "useWhatsapp" boolean DEFAULT true,
    "useFacebook" boolean DEFAULT true,
    "useInstagram" boolean DEFAULT true,
    "useCampaigns" boolean DEFAULT true,
    "useSchedules" boolean DEFAULT true,
    "useInternalChat" boolean DEFAULT true,
    "useExternalApi" boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "useTelegram" boolean DEFAULT false,
    "useWppOficial" boolean DEFAULT false,
    "useEvolution" boolean DEFAULT false,
    "useGroups" boolean DEFAULT false,
    "useAgentsIA" boolean DEFAULT false,
    "txId" character varying(255)
);


--
-- Name: Invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Invoices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Invoices_id_seq" OWNED BY public."Invoices".id;


--
-- Name: KipflowQueries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KipflowQueries" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "ticketId" integer,
    "contactId" integer,
    "userId" integer,
    operation character varying(255) NOT NULL,
    identifier character varying(255) NOT NULL,
    "identifierHash" character varying(64) NOT NULL,
    source character varying(255) DEFAULT 'manual'::character varying NOT NULL,
    status character varying(255) DEFAULT 'success'::character varying NOT NULL,
    cached boolean DEFAULT false NOT NULL,
    cost numeric(12,4),
    "requestData" jsonb,
    "responseData" jsonb,
    "errorMessage" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: KipflowQueries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KipflowQueries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KipflowQueries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KipflowQueries_id_seq" OWNED BY public."KipflowQueries".id;


--
-- Name: KnowledgeAccessLogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeAccessLogs" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "userId" integer,
    "resourceType" character varying(50) NOT NULL,
    "resourceId" integer NOT NULL,
    action character varying(50) NOT NULL,
    metadata jsonb DEFAULT '{}'::jsonb,
    "createdAt" timestamp with time zone NOT NULL
);


--
-- Name: KnowledgeAccessLogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeAccessLogs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeAccessLogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeAccessLogs_id_seq" OWNED BY public."KnowledgeAccessLogs".id;


--
-- Name: KnowledgeArticles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeArticles" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    type character varying(50) NOT NULL,
    title character varying(500) NOT NULL,
    content text NOT NULL,
    status character varying(20) DEFAULT 'draft'::character varying NOT NULL,
    "confidenceScore" double precision DEFAULT '0.5'::double precision NOT NULL,
    frequency integer DEFAULT 1 NOT NULL,
    "usageCount" integer DEFAULT 0 NOT NULL,
    "positiveUsageCount" integer DEFAULT 0 NOT NULL,
    "sourceTicketId" integer,
    tags text[] DEFAULT ARRAY[]::text[] NOT NULL,
    "lastAccessedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT chk_knowledge_articles_confidence_score CHECK ((("confidenceScore" >= (0.0)::double precision) AND ("confidenceScore" <= (1.0)::double precision))),
    CONSTRAINT chk_knowledge_articles_status CHECK (((status)::text = ANY ((ARRAY['draft'::character varying, 'validated'::character varying, 'deprecated'::character varying, 'rejected'::character varying])::text[]))),
    CONSTRAINT chk_knowledge_articles_type CHECK (((type)::text = ANY ((ARRAY['faq'::character varying, 'solution'::character varying, 'best_practice'::character varying, 'objection'::character varying, 'validated_response'::character varying])::text[])))
);


--
-- Name: KnowledgeArticles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeArticles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeArticles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeArticles_id_seq" OWNED BY public."KnowledgeArticles".id;


--
-- Name: KnowledgeChunks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeChunks" (
    id bigint NOT NULL,
    "sourceId" bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "chunkIndex" integer DEFAULT 0 NOT NULL,
    content text NOT NULL,
    embedding text DEFAULT ''::text,
    hash text DEFAULT ''::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: KnowledgeChunks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeChunks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeChunks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeChunks_id_seq" OWNED BY public."KnowledgeChunks".id;


--
-- Name: KnowledgeEntities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeEntities" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    category character varying(50) NOT NULL,
    title character varying(500) NOT NULL,
    content text NOT NULL,
    tags text[] DEFAULT ARRAY[]::text[],
    frequency integer DEFAULT 1,
    "confidenceScore" double precision DEFAULT '0.5'::double precision,
    priority character varying(20) DEFAULT 'normal'::character varying,
    verified boolean DEFAULT false,
    "sourceTicketIds" integer[] DEFAULT ARRAY[]::integer[],
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT chk_knowledge_entities_category CHECK (((category)::text = ANY ((ARRAY['product'::character varying, 'service'::character varying, 'recurring_problem'::character varying, 'objection'::character varying, 'client_profile'::character varying, 'operational_pattern'::character varying])::text[]))),
    CONSTRAINT chk_knowledge_entities_confidence_score CHECK ((("confidenceScore" >= (0.0)::double precision) AND ("confidenceScore" <= (1.0)::double precision))),
    CONSTRAINT chk_knowledge_entities_priority CHECK (((priority)::text = ANY ((ARRAY['low'::character varying, 'normal'::character varying, 'high'::character varying])::text[])))
);


--
-- Name: KnowledgeEntities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeEntities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeEntities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeEntities_id_seq" OWNED BY public."KnowledgeEntities".id;


--
-- Name: KnowledgeJobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeJobs" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "ticketId" integer,
    type character varying(50) DEFAULT 'extraction'::character varying NOT NULL,
    status character varying(20) DEFAULT 'pending'::character varying NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    payload jsonb DEFAULT '{}'::jsonb,
    result jsonb,
    error text,
    retries integer DEFAULT 0 NOT NULL,
    "maxRetries" integer DEFAULT 3 NOT NULL,
    "nextRetryAt" timestamp with time zone,
    "startedAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT chk_knowledge_jobs_status CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'processing'::character varying, 'completed'::character varying, 'failed'::character varying])::text[]))),
    CONSTRAINT chk_knowledge_jobs_type CHECK (((type)::text = ANY ((ARRAY['extraction'::character varying, 'role_inference'::character varying, 'graph_update'::character varying, 'article_mining'::character varying])::text[])))
);


--
-- Name: KnowledgeJobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeJobs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeJobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeJobs_id_seq" OWNED BY public."KnowledgeJobs".id;


--
-- Name: KnowledgeSources; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."KnowledgeSources" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name text NOT NULL,
    kind text DEFAULT 'text'::text NOT NULL,
    content text DEFAULT ''::text NOT NULL,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    "chunkCount" integer DEFAULT 0 NOT NULL,
    status text DEFAULT 'ready'::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: KnowledgeSources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."KnowledgeSources_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: KnowledgeSources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."KnowledgeSources_id_seq" OWNED BY public."KnowledgeSources".id;


--
-- Name: LLMProviderConfigs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."LLMProviderConfigs" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    provider character varying(100) NOT NULL,
    "apiKey" character varying(500) NOT NULL,
    "baseUrl" character varying(500) DEFAULT ''::character varying,
    "isActive" boolean DEFAULT true,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now()
);


--
-- Name: LLMProviderConfigs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."LLMProviderConfigs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: LLMProviderConfigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."LLMProviderConfigs_id_seq" OWNED BY public."LLMProviderConfigs".id;


--
-- Name: LayoutPresets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."LayoutPresets" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name character varying(120) NOT NULL,
    "isActive" boolean DEFAULT false NOT NULL,
    "companyName" character varying(255) DEFAULT ''::character varying,
    "companySub" character varying(255) DEFAULT ''::character varying,
    cnpj character varying(40) DEFAULT ''::character varying,
    phone character varying(60) DEFAULT ''::character varying,
    email character varying(255) DEFAULT ''::character varying,
    website character varying(500) DEFAULT ''::character varying,
    logo character varying(2000) DEFAULT ''::character varying,
    favicon character varying(2000) DEFAULT ''::character varying,
    "primaryColor" character varying(20) DEFAULT ''::character varying,
    "secondaryColor" character varying(20) DEFAULT ''::character varying,
    "bgColor" character varying(20) DEFAULT ''::character varying,
    "createdBy" bigint DEFAULT 0,
    "updatedBy" bigint DEFAULT 0,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    "displayMode" character varying(20) DEFAULT 'logo-text'::character varying NOT NULL
);


--
-- Name: LayoutPresets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."LayoutPresets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: LayoutPresets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."LayoutPresets_id_seq" OWNED BY public."LayoutPresets".id;


--
-- Name: LeadHunterCampaigns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."LeadHunterCampaigns" (
    id integer NOT NULL,
    "campaignId" character varying(255) NOT NULL,
    "companyId" integer NOT NULL,
    name character varying(255),
    status character varying(50) DEFAULT 'running'::character varying NOT NULL,
    "totalLeads" integer DEFAULT 0 NOT NULL,
    "sentCount" integer DEFAULT 0 NOT NULL,
    "errorCount" integer DEFAULT 0 NOT NULL,
    "invalidPhones" jsonb DEFAULT '[]'::jsonb,
    message text,
    "whatsappId" integer,
    settings jsonb DEFAULT '{}'::jsonb,
    logs jsonb DEFAULT '[]'::jsonb,
    "aiSummary" text,
    "aiSummaryGeneratedAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: LeadHunterCampaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."LeadHunterCampaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: LeadHunterCampaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."LeadHunterCampaigns_id_seq" OWNED BY public."LeadHunterCampaigns".id;


--
-- Name: LgpdExecutions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."LgpdExecutions" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "contactId" bigint NOT NULL,
    "contactNumber" text DEFAULT ''::text NOT NULL,
    kind text DEFAULT 'redact'::text NOT NULL,
    "requestedBy" bigint DEFAULT 0 NOT NULL,
    "requestedByName" text DEFAULT 'Sistema'::text NOT NULL,
    status text DEFAULT 'success'::text NOT NULL,
    detail text DEFAULT ''::text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: LgpdExecutions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."LgpdExecutions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: LgpdExecutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."LgpdExecutions_id_seq" OWNED BY public."LgpdExecutions".id;


--
-- Name: Licenses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Licenses" (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'active'::character varying,
    "validUntil" timestamp with time zone,
    "maxConnections" integer,
    "maxUsers" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    domain character varying(255) DEFAULT NULL::character varying
);


--
-- Name: Licenses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Licenses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Licenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Licenses_id_seq" OWNED BY public."Licenses".id;


--
-- Name: LuxuryContactMemories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."LuxuryContactMemories" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "contactId" bigint NOT NULL,
    summary text DEFAULT ''::text NOT NULL,
    facts jsonb DEFAULT '[]'::jsonb NOT NULL,
    preferences jsonb DEFAULT '[]'::jsonb NOT NULL,
    "lastIncoming" text DEFAULT ''::text NOT NULL,
    "recentMessages" jsonb DEFAULT '[]'::jsonb NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: LuxuryContactMemories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."LuxuryContactMemories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: LuxuryContactMemories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."LuxuryContactMemories_id_seq" OWNED BY public."LuxuryContactMemories".id;


--
-- Name: McpTokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."McpTokens" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name text NOT NULL,
    "tokenHash" text NOT NULL,
    scopes jsonb DEFAULT '[]'::jsonb NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    "lastUsedAt" timestamp with time zone,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: McpTokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."McpTokens_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: McpTokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."McpTokens_id_seq" OWNED BY public."McpTokens".id;


--
-- Name: MessageRecoveryRuns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."MessageRecoveryRuns" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "whatsappId" integer NOT NULL,
    "requestedByUserId" integer NOT NULL,
    status character varying(255) DEFAULT 'RUNNING'::character varying NOT NULL,
    "requestedCount" integer DEFAULT 100 NOT NULL,
    received integer DEFAULT 0 NOT NULL,
    recovered integer DEFAULT 0 NOT NULL,
    "skippedExisting" integer DEFAULT 0 NOT NULL,
    "skippedNoContact" integer DEFAULT 0 NOT NULL,
    "skippedNoTicket" integer DEFAULT 0 NOT NULL,
    error text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: MessageRecoveryRuns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."MessageRecoveryRuns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: MessageRecoveryRuns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."MessageRecoveryRuns_id_seq" OWNED BY public."MessageRecoveryRuns".id;


--
-- Name: MessageTemplates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."MessageTemplates" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    name text NOT NULL,
    body text NOT NULL,
    channel text DEFAULT 'whatsapp'::text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: MessageTemplates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."MessageTemplates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: MessageTemplates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."MessageTemplates_id_seq" OWNED BY public."MessageTemplates".id;


--
-- Name: Messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Messages" (
    id character varying(255) NOT NULL,
    body text NOT NULL,
    ack integer DEFAULT 0 NOT NULL,
    read boolean DEFAULT false NOT NULL,
    "mediaType" character varying(255),
    "mediaUrl" text,
    "ticketId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "fromMe" boolean DEFAULT false NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "contactId" integer,
    "quotedMsgId" character varying(255),
    "companyId" integer,
    "remoteJid" text,
    "dataJson" text,
    participant text,
    "queueId" integer,
    "isGroup" boolean DEFAULT false NOT NULL,
    "participantContactId" integer
);


--
-- Name: MsgTelegram; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."MsgTelegram" (
    id integer NOT NULL,
    "chatId" character varying(255) NOT NULL,
    message character varying(255) NOT NULL,
    "messageType" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: MsgTelegram_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."MsgTelegram_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: MsgTelegram_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."MsgTelegram_id_seq" OWNED BY public."MsgTelegram".id;


--
-- Name: OfficialCampaignShipping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OfficialCampaignShipping" (
    id integer NOT NULL,
    "officialCampaignId" integer NOT NULL,
    "contactId" integer NOT NULL,
    status character varying(255) DEFAULT 'PENDING'::character varying NOT NULL,
    "messageId" character varying(255),
    attempt integer DEFAULT 0 NOT NULL,
    error text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "sentAt" timestamp with time zone
);


--
-- Name: OfficialCampaignShipping_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."OfficialCampaignShipping_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: OfficialCampaignShipping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."OfficialCampaignShipping_id_seq" OWNED BY public."OfficialCampaignShipping".id;


--
-- Name: OfficialCampaignShippings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OfficialCampaignShippings" (
    id integer NOT NULL,
    "officialCampaignId" integer NOT NULL,
    "contactId" integer NOT NULL,
    status character varying(255) DEFAULT 'PENDING'::character varying NOT NULL,
    attempt integer DEFAULT 0 NOT NULL,
    error text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: OfficialCampaignShippings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."OfficialCampaignShippings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: OfficialCampaignShippings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."OfficialCampaignShippings_id_seq" OWNED BY public."OfficialCampaignShippings".id;


--
-- Name: OfficialCampaigns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OfficialCampaigns" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "companyId" integer NOT NULL,
    "whatsappId" integer,
    "contactListId" integer,
    "whatsappTemplateId" integer,
    status character varying(255) DEFAULT 'PENDING'::character varying NOT NULL,
    "scheduledAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    config json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "mediaPath" character varying(255),
    "shuffleMode" boolean DEFAULT false NOT NULL,
    "whatsappIds" integer[] DEFAULT ARRAY[]::integer[],
    "customMessage" text,
    "campaignType" public."enum_OfficialCampaigns_campaignType" DEFAULT 'OFFICIAL'::public."enum_OfficialCampaigns_campaignType" NOT NULL,
    "mediaName" character varying(255)
);


--
-- Name: OfficialCampaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."OfficialCampaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: OfficialCampaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."OfficialCampaigns_id_seq" OWNED BY public."OfficialCampaigns".id;


--
-- Name: Plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Plans" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    users integer DEFAULT 0,
    connections integer DEFAULT 0,
    queues integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    amount character varying(255),
    "useFacebook" boolean DEFAULT true,
    "useInstagram" boolean DEFAULT true,
    "useWhatsapp" boolean DEFAULT true,
    "useCampaigns" boolean DEFAULT true,
    "useExternalApi" boolean DEFAULT true,
    "useInternalChat" boolean DEFAULT true,
    "useSchedules" boolean DEFAULT true,
    "useTelegram" boolean DEFAULT false,
    "useEvolution" boolean DEFAULT false,
    "useWppOficial" boolean DEFAULT false,
    "useGroups" boolean DEFAULT false,
    "useAgentsIA" boolean DEFAULT false,
    "useWhiteLabel" boolean DEFAULT false,
    "useCredits" boolean DEFAULT false NOT NULL,
    "useAccountingModule" boolean DEFAULT true NOT NULL,
    "useLegalModule" boolean DEFAULT true NOT NULL,
    "useContaAzul" boolean DEFAULT false NOT NULL
);


--
-- Name: Plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Plans_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Plans_id_seq" OWNED BY public."Plans".id;


--
-- Name: ProfessionalDossierDocuments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ProfessionalDossierDocuments" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "dossierId" integer NOT NULL,
    "uploadedById" integer,
    "parentDocumentId" integer,
    "originalName" character varying(255) NOT NULL,
    "storedPath" character varying(255) NOT NULL,
    "mimeType" character varying(255) NOT NULL,
    size integer NOT NULL,
    category character varying(255) DEFAULT 'other'::character varying NOT NULL,
    version integer DEFAULT 1 NOT NULL,
    description text,
    checksum character varying(64) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "processingStatus" character varying(24) DEFAULT 'pending'::character varying NOT NULL,
    "extractedText" text,
    analysis jsonb,
    "processedAt" timestamp with time zone,
    "processingError" text,
    "knowledgeArticleId" integer
);


--
-- Name: ProfessionalDossierDocuments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ProfessionalDossierDocuments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ProfessionalDossierDocuments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ProfessionalDossierDocuments_id_seq" OWNED BY public."ProfessionalDossierDocuments".id;


--
-- Name: ProfessionalDossiers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ProfessionalDossiers" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    "contactId" integer NOT NULL,
    "ticketId" integer,
    "ownerId" integer,
    "createdById" integer,
    kind character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    status character varying(255) DEFAULT 'intake'::character varying NOT NULL,
    priority character varying(255) DEFAULT 'normal'::character varying NOT NULL,
    reference character varying(255),
    "dueDate" timestamp with time zone,
    amount numeric(14,2),
    checklist jsonb DEFAULT '[]'::jsonb NOT NULL,
    metadata jsonb DEFAULT '{}'::jsonb NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: ProfessionalDossiers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ProfessionalDossiers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ProfessionalDossiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ProfessionalDossiers_id_seq" OWNED BY public."ProfessionalDossiers".id;


--
-- Name: QueueOptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."QueueOptions" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    message text,
    option text,
    "queueId" integer,
    "parentId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "optionType" character varying(255) DEFAULT 'text'::character varying
);


--
-- Name: QueueOptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."QueueOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: QueueOptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."QueueOptions_id_seq" OWNED BY public."QueueOptions".id;


--
-- Name: Queues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Queues" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    "greetingMessage" text,
    "urlFlow" text,
    "tokenFlow" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    schedules jsonb DEFAULT '[]'::jsonb,
    "outOfHoursMessage" text,
    "typebotToken" character varying(255),
    "typebotUrl" character varying(255),
    "typebotName" text
);


--
-- Name: Queues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Queues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Queues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Queues_id_seq" OWNED BY public."Queues".id;


--
-- Name: QuickMessages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."QuickMessages" (
    id integer NOT NULL,
    shortcode character varying(255) NOT NULL,
    message text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


--
-- Name: QuickMessages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."QuickMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: QuickMessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."QuickMessages_id_seq" OWNED BY public."QuickMessages".id;


--
-- Name: Ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Ratings" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    name character varying(255) NOT NULL,
    message text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: RatingsOptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."RatingsOptions" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    "ratingId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: RatingsOptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."RatingsOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: RatingsOptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."RatingsOptions_id_seq" OWNED BY public."RatingsOptions".id;


--
-- Name: Ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Ratings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Ratings_id_seq" OWNED BY public."Ratings".id;


--
-- Name: RiskConfigs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."RiskConfigs" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    "queueId" bigint,
    "coldHours" integer DEFAULT 24 NOT NULL,
    "criticalHours" integer DEFAULT 72 NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: RiskConfigs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."RiskConfigs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: RiskConfigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."RiskConfigs_id_seq" OWNED BY public."RiskConfigs".id;


--
-- Name: SGPMessageTemplates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SGPMessageTemplates" (
    id bigint NOT NULL,
    "companyId" bigint NOT NULL,
    code character varying(50) NOT NULL,
    title character varying(255) DEFAULT ''::character varying,
    subtitle character varying(255) DEFAULT ''::character varying,
    footer character varying(255) DEFAULT ''::character varying,
    body text DEFAULT ''::text NOT NULL,
    buttons jsonb DEFAULT '[]'::jsonb NOT NULL,
    "sendButtonsOnly" boolean DEFAULT true NOT NULL,
    "updatedBy" bigint DEFAULT 0,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    enabled boolean DEFAULT true NOT NULL
);


--
-- Name: SGPMessageTemplates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."SGPMessageTemplates_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: SGPMessageTemplates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."SGPMessageTemplates_id_seq" OWNED BY public."SGPMessageTemplates".id;


--
-- Name: Schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Schedules" (
    id integer NOT NULL,
    body text NOT NULL,
    "sendAt" timestamp with time zone,
    "sentAt" timestamp with time zone,
    "contactId" integer,
    "ticketId" integer,
    "userId" integer,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    status character varying(255),
    "daysR" integer,
    "campId" integer,
    "mediaPath" text,
    "mediaName" text
);


--
-- Name: Schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Schedules_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Schedules_id_seq" OWNED BY public."Schedules".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


--
-- Name: Settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Settings" (
    key character varying(255) NOT NULL,
    value text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    id integer NOT NULL,
    "urlTypeBot" character varying(255),
    "viewerTypeBot" character varying(255),
    "apiKeyTypeBot" character varying(255),
    "typeTimer" character varying(255),
    "recordTimer" character varying(255),
    "n8nUrl" character varying(255),
    "urlFlow" character varying(255),
    "tokenFlow" character varying(255),
    "keyMp" character varying(255)
);


--
-- Name: Settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Settings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Settings_id_seq" OWNED BY public."Settings".id;


--
-- Name: Subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Subscriptions" (
    id integer NOT NULL,
    "isActive" boolean DEFAULT false,
    "expiresAt" timestamp with time zone NOT NULL,
    "userPriceCents" integer,
    "whatsPriceCents" integer,
    "lastInvoiceUrl" character varying(255),
    "lastPlanChange" timestamp with time zone,
    "companyId" integer NOT NULL,
    "providerSubscriptionId" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Subscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Subscriptions_id_seq" OWNED BY public."Subscriptions".id;


--
-- Name: Tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255),
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    kanban integer,
    "msgR" text,
    "rptDays" integer,
    "actCamp" integer,
    "mediaPath" text,
    "mediaName" text
);


--
-- Name: Tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;


--
-- Name: Tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Tasks" (
    id integer NOT NULL,
    text character varying(255),
    description text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    "companyId" integer NOT NULL,
    "userId" integer
);


--
-- Name: Tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Tasks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Tasks_id_seq" OWNED BY public."Tasks".id;


--
-- Name: TelegramBots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."TelegramBots" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    token text NOT NULL,
    username character varying(255),
    "botId" character varying(255),
    status character varying(255) DEFAULT 'disconnected'::character varying NOT NULL,
    "isDefault" boolean DEFAULT false NOT NULL,
    "greetingMessage" text DEFAULT ''::text,
    "farewellMessage" text DEFAULT ''::text,
    "outOfHoursMessage" text DEFAULT ''::text,
    "expiresTicket" integer DEFAULT 0,
    "companyId" integer,
    "queueId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    kind character varying(255) DEFAULT 'bot'::character varying NOT NULL,
    session text,
    "apiId" integer DEFAULT 0,
    "apiHash" character varying(255) DEFAULT ''::character varying,
    "personalQueueIds" text
);


--
-- Name: TelegramBots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."TelegramBots_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: TelegramBots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."TelegramBots_id_seq" OWNED BY public."TelegramBots".id;


--
-- Name: TicketMediaDeliveries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."TicketMediaDeliveries" (
    id integer NOT NULL,
    "ticketId" integer NOT NULL,
    "mediaId" integer NOT NULL,
    "companyId" integer NOT NULL,
    trigger character varying(255),
    "sentAt" timestamp with time zone NOT NULL
);


--
-- Name: TicketMediaDeliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."TicketMediaDeliveries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: TicketMediaDeliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."TicketMediaDeliveries_id_seq" OWNED BY public."TicketMediaDeliveries".id;


--
-- Name: TicketNotes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."TicketNotes" (
    id integer NOT NULL,
    note character varying(255) NOT NULL,
    "userId" integer,
    "contactId" integer NOT NULL,
    "ticketId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: TicketNotes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."TicketNotes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: TicketNotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."TicketNotes_id_seq" OWNED BY public."TicketNotes".id;


--
-- Name: TicketTags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."TicketTags" (
    "ticketId" integer NOT NULL,
    "tagId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: TicketTraking; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."TicketTraking" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "whatsappId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "queuedAt" timestamp with time zone,
    "startedAt" timestamp with time zone,
    "finishedAt" timestamp with time zone,
    "ratingAt" timestamp with time zone,
    rated boolean DEFAULT false,
    "ratingId" integer
);


--
-- Name: TicketTraking_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."TicketTraking_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: TicketTraking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."TicketTraking_id_seq" OWNED BY public."TicketTraking".id;


--
-- Name: Tickets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Tickets" (
    id integer NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    "lastMessage" text,
    "contactId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "whatsappId" integer,
    "isGroup" boolean DEFAULT false NOT NULL,
    "unreadMessages" integer,
    "queueId" integer,
    "companyId" integer,
    uuid uuid,
    chatbot boolean DEFAULT false,
    "queueOptionId" integer,
    "isBot" boolean,
    channel text DEFAULT 'whatsapp'::text,
    "amountUsedBotQueues" integer,
    "telegramBotId" integer,
    "groupContactId" integer,
    "sendChannel" character varying(255) DEFAULT NULL::character varying
);


--
-- Name: Tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Tickets_id_seq" OWNED BY public."Tickets".id;


--
-- Name: UserQueues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."UserQueues" (
    "userId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: UserRatings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."UserRatings" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "ratingIdOption" integer,
    "ratingId" integer
);


--
-- Name: UserRatings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."UserRatings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: UserRatings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."UserRatings_id_seq" OWNED BY public."UserRatings".id;


--
-- Name: UserWhatsapps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."UserWhatsapps" (
    "userId" integer NOT NULL,
    "whatsappId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "passwordHash" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    profile character varying(255) DEFAULT 'admin'::character varying NOT NULL,
    "tokenVersion" integer DEFAULT 0 NOT NULL,
    "companyId" integer,
    super boolean DEFAULT false,
    online boolean DEFAULT false,
    "endWork" character varying(255) DEFAULT '23:59'::character varying,
    "startWork" character varying(255) DEFAULT '00:00'::character varying,
    color character varying(255),
    "farewellMessage" text,
    "resetPassword" character varying(255),
    "confirmationToken" character varying(255) DEFAULT NULL::character varying,
    avatar text,
    "pushToken" text,
    permissions json DEFAULT '{}'::json NOT NULL,
    "useSignature" boolean DEFAULT true NOT NULL
);


--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: WebhookEndpoints; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."WebhookEndpoints" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    url text NOT NULL,
    secret text DEFAULT ''::text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    events text,
    headers text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: WebhookEndpoints_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."WebhookEndpoints_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: WebhookEndpoints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."WebhookEndpoints_id_seq" OWNED BY public."WebhookEndpoints".id;


--
-- Name: WhatsMeowSessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."WhatsMeowSessions" (
    id integer NOT NULL,
    "sessionId" character varying(255) NOT NULL,
    connected boolean DEFAULT false NOT NULL,
    "loggedIn" boolean DEFAULT false NOT NULL,
    "webhookUrl" text,
    "lastQr" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: WhatsMeowSessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."WhatsMeowSessions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: WhatsMeowSessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."WhatsMeowSessions_id_seq" OWNED BY public."WhatsMeowSessions".id;


--
-- Name: WhatsappQueues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."WhatsappQueues" (
    "whatsappId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: WhatsappTemplates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."WhatsappTemplates" (
    id integer NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    language text NOT NULL,
    status text NOT NULL,
    components json,
    "templateId" text NOT NULL,
    "companyId" integer,
    "whatsappId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: WhatsappTemplates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."WhatsappTemplates_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: WhatsappTemplates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."WhatsappTemplates_id_seq" OWNED BY public."WhatsappTemplates".id;


--
-- Name: Whatsapps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Whatsapps" (
    id integer NOT NULL,
    session text,
    qrcode text,
    status character varying(255),
    battery character varying(255),
    plugged boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    "isDefault" boolean DEFAULT false NOT NULL,
    retries integer DEFAULT 0 NOT NULL,
    "greetingMessage" text,
    "companyId" integer,
    "complationMessage" text,
    "outOfHoursMessage" text,
    token text,
    "farewellMessage" text,
    provider text DEFAULT 'stable'::text,
    number text,
    channel text,
    "facebookUserToken" text,
    "tokenMeta" text,
    "facebookPageUserId" text,
    "facebookUserId" text,
    "maxUseBotQueues" integer,
    "expiresTicket" integer DEFAULT 0,
    "chatGPTEnabled" boolean DEFAULT false NOT NULL,
    "greetingMediaAttachment" text,
    "ratingMessage" character varying(255) DEFAULT NULL::character varying,
    "maxUseBotQueueId" integer,
    tipo character varying(255) DEFAULT 'baileys'::character varying,
    "wabaId" text,
    "idZap" text,
    "tokenZap" text,
    "isEvolution" boolean DEFAULT false,
    "evolutionInstanceName" character varying(255),
    "evolutionApiKey" text,
    "evolutionApiUrl" character varying(255) DEFAULT 'https://api.evolution-api.com'::character varying,
    "evolutionStatus" character varying(255) DEFAULT 'disconnected'::character varying,
    "evolutionWebhookUrl" text,
    "sendChannel" character varying(255) DEFAULT NULL::character varying,
    "outgoingId" integer
);


--
-- Name: Whatsapps_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Whatsapps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Whatsapps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Whatsapps_id_seq" OWNED BY public."Whatsapps".id;


--
-- Name: WhiteLabels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."WhiteLabels" (
    id integer NOT NULL,
    "companyId" integer NOT NULL,
    slug character varying(255) NOT NULL,
    domain character varying(255),
    "siteName" character varying(255) NOT NULL,
    "primaryColor" character varying(255) DEFAULT '#10b981'::character varying,
    "secondaryColor" character varying(255) DEFAULT '#065f46'::character varying,
    "logoUrl" character varying(255),
    "faviconUrl" character varying(255),
    "licenseKey" character varying(255),
    "isValid" boolean DEFAULT false,
    "validationMessage" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    config json
);


--
-- Name: WhiteLabels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."WhiteLabels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: WhiteLabels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."WhiteLabels_id_seq" OWNED BY public."WhiteLabels".id;


--
-- Name: baileys_stores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.baileys_stores (
    id integer NOT NULL,
    "sessionId" character varying(255) NOT NULL,
    "whatsappId" integer,
    data json,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: baileys_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.baileys_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: baileys_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.baileys_stores_id_seq OWNED BY public.baileys_stores.id;


--
-- Name: proxies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proxies (
    id integer NOT NULL,
    ip character varying(255) NOT NULL,
    port integer NOT NULL,
    "user" character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: proxies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proxies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: proxies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proxies_id_seq OWNED BY public.proxies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version text NOT NULL,
    applied_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: AIExecutionLogs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AIExecutionLogs" ALTER COLUMN id SET DEFAULT nextval('public."AIExecutionLogs_id_seq"'::regclass);


--
-- Name: AgendamentoEmails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AgendamentoEmails" ALTER COLUMN id SET DEFAULT nextval('public."AgendamentoEmails_id_seq"'::regclass);


--
-- Name: AgentGlossary id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AgentGlossary" ALTER COLUMN id SET DEFAULT nextval('public."AgentGlossary_id_seq"'::regclass);


--
-- Name: Announcements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Announcements" ALTER COLUMN id SET DEFAULT nextval('public."Announcements_id_seq"'::regclass);


--
-- Name: ApiRequests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApiRequests" ALTER COLUMN id SET DEFAULT nextval('public."ApiRequests_id_seq"'::regclass);


--
-- Name: ApiUsages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApiUsages" ALTER COLUMN id SET DEFAULT nextval('public."ApiUsages_id_seq"'::regclass);


--
-- Name: AuditLogs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AuditLogs" ALTER COLUMN id SET DEFAULT nextval('public."AuditLogs_id_seq"'::regclass);


--
-- Name: AutomationRules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AutomationRules" ALTER COLUMN id SET DEFAULT nextval('public."AutomationRules_id_seq"'::regclass);


--
-- Name: AutomationRuns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AutomationRuns" ALTER COLUMN id SET DEFAULT nextval('public."AutomationRuns_id_seq"'::regclass);


--
-- Name: Baileys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Baileys" ALTER COLUMN id SET DEFAULT nextval('public."Baileys_id_seq"'::regclass);


--
-- Name: CampaignSettings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignSettings" ALTER COLUMN id SET DEFAULT nextval('public."CampaignSettings_id_seq"'::regclass);


--
-- Name: CampaignShipping id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignShipping" ALTER COLUMN id SET DEFAULT nextval('public."CampaignShipping_id_seq"'::regclass);


--
-- Name: Campaigns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Campaigns" ALTER COLUMN id SET DEFAULT nextval('public."Campaigns_id_seq"'::regclass);


--
-- Name: ChatMessages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatMessages" ALTER COLUMN id SET DEFAULT nextval('public."ChatMessages_id_seq"'::regclass);


--
-- Name: ChatUsers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatUsers" ALTER COLUMN id SET DEFAULT nextval('public."ChatUsers_id_seq"'::regclass);


--
-- Name: Chatbots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chatbots" ALTER COLUMN id SET DEFAULT nextval('public."Chatbots_id_seq"'::regclass);


--
-- Name: Chats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chats" ALTER COLUMN id SET DEFAULT nextval('public."Chats_id_seq"'::regclass);


--
-- Name: Companies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);


--
-- Name: CompanyWebhookSecrets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CompanyWebhookSecrets" ALTER COLUMN id SET DEFAULT nextval('public."CompanyWebhookSecrets_id_seq"'::regclass);


--
-- Name: ContactCustomFields id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactCustomFields" ALTER COLUMN id SET DEFAULT nextval('public."ContactCustomFields_id_seq"'::regclass);


--
-- Name: ContactListItems id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactListItems" ALTER COLUMN id SET DEFAULT nextval('public."ContactListItems_id_seq"'::regclass);


--
-- Name: ContactLists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactLists" ALTER COLUMN id SET DEFAULT nextval('public."ContactLists_id_seq"'::regclass);


--
-- Name: ContactRoles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactRoles" ALTER COLUMN id SET DEFAULT nextval('public."ContactRoles_id_seq"'::regclass);


--
-- Name: Contacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Contacts" ALTER COLUMN id SET DEFAULT nextval('public."Contacts_id_seq"'::regclass);


--
-- Name: CreditTransactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CreditTransactions" ALTER COLUMN id SET DEFAULT nextval('public."CreditTransactions_id_seq"'::regclass);


--
-- Name: DialogChatBots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DialogChatBots" ALTER COLUMN id SET DEFAULT nextval('public."DialogChatBots_id_seq"'::regclass);


--
-- Name: EmailIntegrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailIntegrations" ALTER COLUMN id SET DEFAULT nextval('public."EmailIntegrations_id_seq"'::regclass);


--
-- Name: Emails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Emails" ALTER COLUMN id SET DEFAULT nextval('public."Emails_id_seq"'::regclass);


--
-- Name: EscortMedia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EscortMedia" ALTER COLUMN id SET DEFAULT nextval('public."EscortMedia_id_seq"'::regclass);


--
-- Name: Escorts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Escorts" ALTER COLUMN id SET DEFAULT nextval('public."Escorts_id_seq"'::regclass);


--
-- Name: Eventos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Eventos" ALTER COLUMN id SET DEFAULT nextval('public."Eventos_id_seq"'::regclass);


--
-- Name: ExternalIntegrationQueries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries" ALTER COLUMN id SET DEFAULT nextval('public."ExternalIntegrationQueries_id_seq"'::regclass);


--
-- Name: FinanceConfigs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceConfigs" ALTER COLUMN id SET DEFAULT nextval('public."FinanceConfigs_id_seq"'::regclass);


--
-- Name: FinanceInvoices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceInvoices" ALTER COLUMN id SET DEFAULT nextval('public."FinanceInvoices_id_seq"'::regclass);


--
-- Name: FollowUpEnrollments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEnrollments" ALTER COLUMN id SET DEFAULT nextval('public."FollowUpEnrollments_id_seq"'::regclass);


--
-- Name: FollowUpEvents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEvents" ALTER COLUMN id SET DEFAULT nextval('public."FollowUpEvents_id_seq"'::regclass);


--
-- Name: FollowUpFlows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpFlows" ALTER COLUMN id SET DEFAULT nextval('public."FollowUpFlows_id_seq"'::regclass);


--
-- Name: GraphEdges id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphEdges" ALTER COLUMN id SET DEFAULT nextval('public."GraphEdges_id_seq"'::regclass);


--
-- Name: GraphNodes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphNodes" ALTER COLUMN id SET DEFAULT nextval('public."GraphNodes_id_seq"'::regclass);


--
-- Name: GroupContacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GroupContacts" ALTER COLUMN id SET DEFAULT nextval('public."GroupContacts_id_seq"'::regclass);


--
-- Name: Helps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Helps" ALTER COLUMN id SET DEFAULT nextval('public."Helps_id_seq"'::regclass);


--
-- Name: Incidents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Incidents" ALTER COLUMN id SET DEFAULT nextval('public."Incidents_id_seq"'::regclass);


--
-- Name: Integrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Integrations" ALTER COLUMN id SET DEFAULT nextval('public."Integrations_id_seq"'::regclass);


--
-- Name: Invoices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Invoices" ALTER COLUMN id SET DEFAULT nextval('public."Invoices_id_seq"'::regclass);


--
-- Name: KipflowQueries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries" ALTER COLUMN id SET DEFAULT nextval('public."KipflowQueries_id_seq"'::regclass);


--
-- Name: KnowledgeAccessLogs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeAccessLogs" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeAccessLogs_id_seq"'::regclass);


--
-- Name: KnowledgeArticles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeArticles" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeArticles_id_seq"'::regclass);


--
-- Name: KnowledgeChunks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeChunks" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeChunks_id_seq"'::regclass);


--
-- Name: KnowledgeEntities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeEntities" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeEntities_id_seq"'::regclass);


--
-- Name: KnowledgeJobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeJobs" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeJobs_id_seq"'::regclass);


--
-- Name: KnowledgeSources id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeSources" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeSources_id_seq"'::regclass);


--
-- Name: LLMProviderConfigs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LLMProviderConfigs" ALTER COLUMN id SET DEFAULT nextval('public."LLMProviderConfigs_id_seq"'::regclass);


--
-- Name: LayoutPresets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LayoutPresets" ALTER COLUMN id SET DEFAULT nextval('public."LayoutPresets_id_seq"'::regclass);


--
-- Name: LeadHunterCampaigns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LeadHunterCampaigns" ALTER COLUMN id SET DEFAULT nextval('public."LeadHunterCampaigns_id_seq"'::regclass);


--
-- Name: LgpdExecutions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LgpdExecutions" ALTER COLUMN id SET DEFAULT nextval('public."LgpdExecutions_id_seq"'::regclass);


--
-- Name: Licenses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Licenses" ALTER COLUMN id SET DEFAULT nextval('public."Licenses_id_seq"'::regclass);


--
-- Name: LuxuryContactMemories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LuxuryContactMemories" ALTER COLUMN id SET DEFAULT nextval('public."LuxuryContactMemories_id_seq"'::regclass);


--
-- Name: McpTokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."McpTokens" ALTER COLUMN id SET DEFAULT nextval('public."McpTokens_id_seq"'::regclass);


--
-- Name: MessageRecoveryRuns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MessageRecoveryRuns" ALTER COLUMN id SET DEFAULT nextval('public."MessageRecoveryRuns_id_seq"'::regclass);


--
-- Name: MessageTemplates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MessageTemplates" ALTER COLUMN id SET DEFAULT nextval('public."MessageTemplates_id_seq"'::regclass);


--
-- Name: MsgTelegram id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MsgTelegram" ALTER COLUMN id SET DEFAULT nextval('public."MsgTelegram_id_seq"'::regclass);


--
-- Name: OfficialCampaignShipping id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShipping" ALTER COLUMN id SET DEFAULT nextval('public."OfficialCampaignShipping_id_seq"'::regclass);


--
-- Name: OfficialCampaignShippings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShippings" ALTER COLUMN id SET DEFAULT nextval('public."OfficialCampaignShippings_id_seq"'::regclass);


--
-- Name: OfficialCampaigns id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns" ALTER COLUMN id SET DEFAULT nextval('public."OfficialCampaigns_id_seq"'::regclass);


--
-- Name: Plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Plans" ALTER COLUMN id SET DEFAULT nextval('public."Plans_id_seq"'::regclass);


--
-- Name: ProfessionalDossierDocuments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossierDocuments" ALTER COLUMN id SET DEFAULT nextval('public."ProfessionalDossierDocuments_id_seq"'::regclass);


--
-- Name: ProfessionalDossiers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers" ALTER COLUMN id SET DEFAULT nextval('public."ProfessionalDossiers_id_seq"'::regclass);


--
-- Name: QueueOptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QueueOptions" ALTER COLUMN id SET DEFAULT nextval('public."QueueOptions_id_seq"'::regclass);


--
-- Name: Queues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Queues" ALTER COLUMN id SET DEFAULT nextval('public."Queues_id_seq"'::regclass);


--
-- Name: QuickMessages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QuickMessages" ALTER COLUMN id SET DEFAULT nextval('public."QuickMessages_id_seq"'::regclass);


--
-- Name: Ratings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Ratings" ALTER COLUMN id SET DEFAULT nextval('public."Ratings_id_seq"'::regclass);


--
-- Name: RatingsOptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RatingsOptions" ALTER COLUMN id SET DEFAULT nextval('public."RatingsOptions_id_seq"'::regclass);


--
-- Name: RiskConfigs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RiskConfigs" ALTER COLUMN id SET DEFAULT nextval('public."RiskConfigs_id_seq"'::regclass);


--
-- Name: SGPMessageTemplates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SGPMessageTemplates" ALTER COLUMN id SET DEFAULT nextval('public."SGPMessageTemplates_id_seq"'::regclass);


--
-- Name: Schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules" ALTER COLUMN id SET DEFAULT nextval('public."Schedules_id_seq"'::regclass);


--
-- Name: Settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Settings" ALTER COLUMN id SET DEFAULT nextval('public."Settings_id_seq"'::regclass);


--
-- Name: Subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Subscriptions" ALTER COLUMN id SET DEFAULT nextval('public."Subscriptions_id_seq"'::regclass);


--
-- Name: Tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);


--
-- Name: Tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tasks" ALTER COLUMN id SET DEFAULT nextval('public."Tasks_id_seq"'::regclass);


--
-- Name: TelegramBots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TelegramBots" ALTER COLUMN id SET DEFAULT nextval('public."TelegramBots_id_seq"'::regclass);


--
-- Name: TicketMediaDeliveries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketMediaDeliveries" ALTER COLUMN id SET DEFAULT nextval('public."TicketMediaDeliveries_id_seq"'::regclass);


--
-- Name: TicketNotes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketNotes" ALTER COLUMN id SET DEFAULT nextval('public."TicketNotes_id_seq"'::regclass);


--
-- Name: TicketTraking id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking" ALTER COLUMN id SET DEFAULT nextval('public."TicketTraking_id_seq"'::regclass);


--
-- Name: Tickets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets" ALTER COLUMN id SET DEFAULT nextval('public."Tickets_id_seq"'::regclass);


--
-- Name: UserRatings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings" ALTER COLUMN id SET DEFAULT nextval('public."UserRatings_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: WebhookEndpoints id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WebhookEndpoints" ALTER COLUMN id SET DEFAULT nextval('public."WebhookEndpoints_id_seq"'::regclass);


--
-- Name: WhatsMeowSessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsMeowSessions" ALTER COLUMN id SET DEFAULT nextval('public."WhatsMeowSessions_id_seq"'::regclass);


--
-- Name: WhatsappTemplates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappTemplates" ALTER COLUMN id SET DEFAULT nextval('public."WhatsappTemplates_id_seq"'::regclass);


--
-- Name: Whatsapps id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps" ALTER COLUMN id SET DEFAULT nextval('public."Whatsapps_id_seq"'::regclass);


--
-- Name: WhiteLabels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhiteLabels" ALTER COLUMN id SET DEFAULT nextval('public."WhiteLabels_id_seq"'::regclass);


--
-- Name: baileys_stores id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.baileys_stores ALTER COLUMN id SET DEFAULT nextval('public.baileys_stores_id_seq'::regclass);


--
-- Name: proxies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxies ALTER COLUMN id SET DEFAULT nextval('public.proxies_id_seq'::regclass);


--
-- Data for Name: AIExecutionLogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AIExecutionLogs" (id, "companyId", "ticketId", function, provider, model, "latencyMs", "inputTokens", "outputTokens", "estimatedCost", "usedFallback", "knowledgeSources", "toolsCalled", error, "createdAt") FROM stdin;
\.


--
-- Data for Name: AgendamentoEmails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AgendamentoEmails" (id, email, subject, message, "dataAgendamento", "companyId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: AgentGlossary; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AgentGlossary" (id, "companyId", phrase, expansion, kind, weight, "addedBy", "createdAt", "updatedAt") FROM stdin;
1	1	teste	teste expansao	typo	1	1	2026-09-15 14:53:30.15799+00	2026-09-15 14:53:30.15799+00
\.


--
-- Data for Name: Announcements; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Announcements" (id, priority, title, text, "mediaPath", "mediaName", "companyId", status, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ApiRequests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ApiRequests" (id, "companyId", name, email, description, status, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ApiUsages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ApiUsages" (id, "companyId", "dateUsed", "UsedOnDay", "usedText", "usedPDF", "usedImage", "usedVideo", "usedOther", "usedCheckNumber", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: AuditLogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AuditLogs" (id, "companyId", "actorId", "actorName", "actorProfile", action, "entityType", "entityId", summary, "previousData", "newData", metadata, "createdAt") FROM stdin;
\.


--
-- Data for Name: AutomationRules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AutomationRules" (id, "companyId", name, enabled, trigger, conditions, actions, "cooldownSeconds", "lastRunAt", "runCount", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: AutomationRuns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."AutomationRuns" (id, "ruleId", "companyId", trigger, "entityType", "entityId", outcome, detail, "createdAt") FROM stdin;
\.


--
-- Data for Name: Baileys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Baileys" (id, "whatsappId", contacts, chats, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: CampaignSettings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CampaignSettings" (id, key, value, "companyId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: CampaignShipping; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CampaignShipping" (id, "jobId", number, message, "confirmationMessage", confirmation, "contactId", "campaignId", "confirmationRequestedAt", "confirmedAt", "deliveredAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Campaigns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Campaigns" (id, name, message1, message2, message3, message4, message5, "confirmationMessage1", "confirmationMessage2", "confirmationMessage3", "confirmationMessage4", "confirmationMessage5", status, confirmation, "mediaPath", "mediaName", "companyId", "contactListId", "whatsappId", "scheduledAt", "completedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ChatMessages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ChatMessages" (id, "chatId", "senderId", message, "mediaPath", "mediaName", "createdAt", "updatedAt", "mediaType") FROM stdin;
\.


--
-- Data for Name: ChatUsers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ChatUsers" (id, "chatId", "userId", unreads, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Chatbots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Chatbots" (id, name, "queueId", "chatbotId", "greetingMessage", "createdAt", "updatedAt", "isAgent", "optionType") FROM stdin;
\.


--
-- Data for Name: Chats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Chats" (id, title, uuid, "ownerId", "lastMessage", "companyId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Companies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Companies" (id, name, phone, email, "createdAt", "updatedAt", "planId", status, schedules, "dueDate", recurrence, document, "paymentMethod", "lastLogin", credits, "businessSegment") FROM stdin;
1	WhatsPainel	\N	\N	2026-08-28 22:22:29.235+00	2026-08-28 22:22:29.235+00	1	t	[]	\N				\N	0.00	both
\.


--
-- Data for Name: CompanyWebhookSecrets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CompanyWebhookSecrets" (id, "companyId", secret, "regenCount", "regenMonthStart", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ContactCustomFields; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ContactCustomFields" (id, name, value, "contactId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ContactListItems; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ContactListItems" (id, name, number, email, "contactListId", "isWhatsappValid", "companyId", "createdAt", "updatedAt", "contactId") FROM stdin;
\.


--
-- Data for Name: ContactLists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ContactLists" (id, name, "companyId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ContactRoles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ContactRoles" (id, "companyId", "contactId", role, "confidenceScore", status, "evidenceTicketIds", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Contacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Contacts" (id, name, number, "profilePicUrl", "createdAt", "updatedAt", email, "isGroup", "companyId", "acceptAudioMessage", channel, active, "disableBot", "typebotToken", lid, "remoteJid", "taxId", street, "streetNumber", complement, district, city, state, zipcode, "deletedAt", "enrichmentData", blocked, "anonymizedAt") FROM stdin;
2	Victor Gabriel Duarte	555193032200	https://pps.whatsapp.net/v/t61.24694-24/776657894_2085557519003288_5459700549805415292_n.jpg?ccb=11-4&oh=01_Q5Aa5QG3hNOY0ujT8POMLMM7I7tUyPDhKjJgWji8FcHPJAlCUQ&oe=6AA07EC4&_nc_sid=5e03e0&_nc_cat=100	2026-08-28 23:52:53.875952+00	2026-09-14 23:07:44.748542+00		f	1	t	whatsmeow	t	f	\N	\N	555193032200@s.whatsapp.net									\N	{}	f	\N
17	Chan Santos	557591900605		2026-08-29 02:38:03.536533+00	2026-08-29 02:42:14.915839+00		f	1	t	whatsmeow	t	f	\N	\N	557591900605@s.whatsapp.net									\N	{}	f	\N
6	Renato Mello	5511965890603		2026-08-29 00:04:30.330086+00	2026-08-29 00:04:30.330086+00		f	1	t	whatsmeow	t	f	\N	\N	5511965890603@s.whatsapp.net									\N	{}	f	\N
7	Raul Monteiro	5541991828123		2026-08-29 00:17:06.693179+00	2026-08-29 00:17:06.713973+00		f	1	t	whatsmeow	t	f	\N	\N	554199182812:3@s.whatsapp.net									\N	{}	f	\N
10	Rei Ayanami	554198277107		2026-08-29 02:04:27.312815+00	2026-08-29 02:09:27.866666+00		f	1	t	whatsmeow	t	f	\N	\N	554198277107@s.whatsapp.net									\N	{}	f	\N
16	Anderson Silva	55859821484984		2026-08-29 02:38:00.83259+00	2026-08-29 02:38:00.972626+00		f	1	t	whatsmeow	t	f	\N	\N	558598214849:84@s.whatsapp.net									\N	{}	f	\N
11	Rei Ayanami	55419827710745		2026-08-29 02:04:30.948311+00	2026-08-29 02:04:31.107407+00		f	1	t	whatsmeow	t	f	\N	\N	554198277107:45@s.whatsapp.net									\N	{}	f	\N
12	Chan Santos	5575919006054		2026-08-29 02:27:31.748595+00	2026-08-29 03:32:11.240331+00		f	1	t	whatsmeow	t	f	\N	\N	557591900605:4@s.whatsapp.net									\N	{}	f	\N
18	J	556299287834	https://pps.whatsapp.net/v/t61.24694-24/672819301_2087581335199779_9206213604016669635_n.jpg?ccb=11-4&oh=01_Q5Aa5QGDzG2JgW0qVzm9So1tDZKJw4INGo_sxVhaanQ_Y6GOzw&oe=6AA153C2&_nc_sid=5e03e0&_nc_cat=104	2026-08-29 02:47:32.587153+00	2026-08-30 13:54:37.040285+00		f	1	t	whatsmeow	t	f	\N	\N	556299287834@s.whatsapp.net									\N	{}	f	\N
5	555197331914	555197331914	https://pps.whatsapp.net/v/t61.24694-24/660287799_1407158621239785_3291608336788287282_n.jpg?ccb=11-4&oh=01_Q5Aa5QG6Ill4dlbySnuiOe09pmBIOE8YztApiCQcokS1FU3cbw&oe=6A9F6B60&_nc_sid=5e03e0&_nc_cat=105	2026-08-29 00:03:12.381818+00	2026-08-30 14:35:45.202021+00		f	1	t	whatsmeow	t	f	\N	\N	555197331914@s.whatsapp.net									\N	{}	f	\N
14	Igor Nunes	55618612258489		2026-08-29 02:37:49.772089+00	2026-08-29 02:37:49.799383+00		f	1	t	whatsmeow	t	f	\N	\N	556186122584:89@s.whatsapp.net									\N	{}	f	\N
4	Joseph Fernandes	55878114845339		2026-08-28 23:53:54.927542+00	2026-08-28 23:53:54.927542+00		f	1	t	whatsmeow	t	f	\N	\N	558781148453:39@s.whatsapp.net									\N	{}	f	\N
9	Nodejs - Whatsapp APIS	120363036972484891	https://pps.whatsapp.net/v/t61.24694-24/263875138_169163215403082_1951773804801254549_n.jpg?ccb=11-4&oh=01_Q5Aa5QHlvubZu224GV_Xp5L9gMU_SPqOddHbhWgKc0dEL0aDWA&oe=6A9F4B6B&_nc_sid=5e03e0&_nc_cat=102	2026-08-29 02:04:27.305312+00	2026-08-29 03:45:08.958561+00		t	1	t	whatsmeow	t	f	\N	\N	120363036972484891@g.us									\N	{}	f	\N
15	Diomedes Neto	558388095596		2026-08-29 02:37:54.943975+00	2026-08-29 02:37:54.968733+00		f	1	t	whatsmeow	t	f	\N	\N	558388095596@s.whatsapp.net									\N	{}	f	\N
8	Multivus Informatica	5534933005932		2026-08-29 00:36:30.153187+00	2026-08-29 03:45:08.96222+00		f	1	t	whatsmeow	t	f	\N	\N	5534933005932@s.whatsapp.net									\N	{}	f	\N
13	Xtextes	558182521231		2026-08-29 02:37:08.444894+00	2026-08-29 02:59:56.117617+00		f	1	t	whatsmeow	t	f	\N	\N	558182521231@s.whatsapp.net									\N	{}	f	\N
31	Bruno Oliveira	5531948938237		2026-09-14 23:10:03.991538+00	2026-09-14 23:10:04.043308+00		f	1	t	whatsmeow	t	f	\N	\N	553194893823:7@s.whatsapp.net									\N	{}	f	\N
19	Xpert Development	51959626715		2026-08-29 03:10:43.688326+00	2026-08-29 03:10:43.854704+00		f	1	t	whatsmeow	t	f	\N	\N	51959626715@s.whatsapp.net									\N	{}	f	\N
3	Whaticket	120363040554135738	https://pps.whatsapp.net/v/t61.24694-24/168816733_290979396390490_3330631984563820192_n.jpg?ccb=11-4&oh=01_Q5Aa5QEBgJasQnS7A7FNOdIrcnbDriC5bzZK5t69olYfRNAywQ&oe=6A9F2822&_nc_sid=5e03e0&_nc_cat=111	2026-08-28 23:53:54.915665+00	2026-08-29 03:20:26.505887+00		t	1	t	whatsmeow	t	f	\N	\N	120363040554135738@g.us									\N	{}	f	\N
28	Owaran	5511975557999		2026-08-29 23:27:11.84344+00	2026-08-30 20:02:44.290313+00		f	1	t	whatsmeow	t	f	\N	\N	5511975557999:48@s.whatsapp.net									\N	{}	f	\N
26	Canal 120363170942886188	120363170942886188		2026-08-29 23:19:41.371825+00	2026-09-15 15:20:44.464638+00		t	1	t	whatsmeow	t	f	\N	\N	120363170942886188@newsletter									\N	{}	f	\N
29	‎	557381317505		2026-08-30 16:45:02.798787+00	2026-09-15 15:23:01.345038+00		f	1	t	whatsmeow	t	f	\N	\N	557381317505@s.whatsapp.net									\N	{}	f	\N
20	555193745183	555193745183	https://pps.whatsapp.net/v/t61.24694-24/735608218_1679680673097763_4988811507486374198_n.jpg?ccb=11-4&oh=01_Q5Aa5QGlL2SKwYrTum9ehedGMxMZStWqMTAJO44ysI7P9Dtaxw&oe=6A9F5CE9&_nc_sid=5e03e0&_nc_cat=103	2026-08-29 03:19:44.929767+00	2026-09-15 15:24:49.114485+00		f	1	t	whatsmeow	t	f	\N	\N	555193745183@s.whatsapp.net									\N	{}	f	\N
22	Matheus	553599477343		2026-08-29 03:30:31.968991+00	2026-08-29 03:37:25.876768+00		f	1	t	whatsmeow	t	f	\N	\N	553599477343@s.whatsapp.net									\N	{}	f	\N
24	Matheus	55359947734339		2026-08-29 03:41:26.939542+00	2026-08-29 03:41:26.939542+00		f	1	t	whatsmeow	t	f	\N	\N	553599477343:39@s.whatsapp.net									\N	{}	f	\N
25	555184082273	555184082273	https://pps.whatsapp.net/v/t61.24694-24/444781440_893816536105264_8048054514943927766_n.jpg?ccb=11-4&oh=01_Q5Aa5QFktiXDPEx2eWYA7EltVvrdMhY17yYb1lYjRzCcTvAt4A&oe=6A9F7EF1&_nc_sid=5e03e0&_nc_cat=107	2026-08-29 04:04:54.404139+00	2026-08-29 04:04:54.558811+00		f	1	t	whatsmeow	t	f	\N	\N	555184082273@s.whatsapp.net									\N	{}	f	\N
32	אושר מיילי	972549926556	https://pps.whatsapp.net/v/t61.24694-24/810899868_1387215250249102_7310868907418602010_n.jpg?ccb=11-4&oh=01_Q5Aa5gH9fRhf9wMdMw-2bgA4KvfPNYKIRqhWbGS_OvWfLf0CVA&oe=6AB66A0C&_nc_sid=5e03e0&_nc_cat=100	2026-09-15 15:24:58.948579+00	2026-09-15 15:28:00.72099+00		f	1	t	whatsmeow	t	f	\N	\N	972549926556@s.whatsapp.net									\N	{}	f	\N
30	WAHA - HTTP API | Automatik®	120363360801286419	https://pps.whatsapp.net/v/t61.24694-24/454369610_547394541458425_2723509238278154743_n.jpg?ccb=11-4&oh=01_Q5Aa5gG9yjzhJ7Q5Rflnv3RIh17JnpyBD4zZet7ErsULyf0waw&oe=6AB59B01&_nc_sid=5e03e0&_nc_cat=109	2026-09-14 23:10:03.985264+00	2026-09-14 23:10:04.038411+00		t	1	t	whatsmeow	t	f	\N	\N	120363360801286419@g.us									\N	{}	f	\N
1	Rogério M.	556992587930	https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4&oh=01_Q5Aa5gH0ubPN-6ofwRXDadyZzliZLDr9WYl2VwCHjxQ9Xw1FUg&oe=6AB67B5A&_nc_sid=5e03e0&_nc_cat=107	2026-08-28 22:47:19.148808+00	2026-09-15 14:27:03.628383+00		f	1	t	whatsmeow	t	f	\N	\N	556992587930@s.whatsapp.net									\N	{}	f	\N
\.


--
-- Data for Name: CreditTransactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."CreditTransactions" (id, "companyId", amount, type, description, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: DialogChatBots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."DialogChatBots" (id, awaiting, "contactId", "chatbotId", "createdAt", "updatedAt", "queueId") FROM stdin;
\.


--
-- Data for Name: EmailIntegrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EmailIntegrations" (id, "companyId", name, email, "smtpHost", "smtpPort", "smtpSecure", "smtpUser", "smtpPassword", "imapHost", "imapPort", "imapSecure", "imapUser", "imapPassword", active, "lastTestAt", "lastError", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Emails" (id, sender, subject, message, "companyId", "createdAt", "updatedAt", scheduled, "sendAt") FROM stdin;
\.


--
-- Data for Name: EscortMedia; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."EscortMedia" (id, "escortId", "companyId", type, category, "fileUrl", "originalName", "mimeType", caption, "sortOrder", active, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Escorts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Escorts" (id, name, age, bio, photos, "userId", "companyId", active, services, cities, location, "workingHours", rates, instagram, telegram, whatsapp, verified, ethnicity, "hairColor", "eyeColor", height, weight, "aboutMe", "socialLinks", "createdAt", "updatedAt", "communicationStyle", "petNames", boldness, boundaries) FROM stdin;
\.


--
-- Data for Name: Eventos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Eventos" (id, title, description, start, "end", concluido, "companyId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ExternalIntegrationQueries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ExternalIntegrationQueries" (id, "companyId", "ticketId", "contactId", "userId", provider, operation, "identifierHash", source, status, cached, "requestData", "responseData", "errorMessage", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: FinanceConfigs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FinanceConfigs" (id, "companyId", "asaasToken", "mercadoPagoToken", "reminderDays", "whatsappId", "templateBefore", "templateDue", "templateOverdue", "createdAt", "updatedAt", "templatePaid", "billingNotificationsEnabled") FROM stdin;
1	1			3,1,0	\N	Olá {name}, sua fatura de {amount} vence em {dueDate}. Toque no botão abaixo para pagar com PIX.	Olá {name}, sua fatura de {amount} vence hoje. Aproveite o PIX e quite agora mesmo.	Olá {name}, sua fatura de {amount} venceu em {dueDate}. Regularize pelo link abaixo.	2026-09-16 14:44:29.709557+00	2026-09-16 15:13:22.170712+00	Olá {name}, confirmamos o pagamento da sua fatura {invoiceId} de {amount}. Obrigado!	t
\.


--
-- Data for Name: FinanceInvoices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FinanceInvoices" (id, "companyId", "contactId", description, amount, "dueDate", status, type, gateway, "gatewayId", "paymentLink", "createdAt", "updatedAt", "lastReminderSentAt", "pixQrCode", "boletoBarcode") FROM stdin;
\.


--
-- Data for Name: FollowUpEnrollments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FollowUpEnrollments" (id, "flowId", "companyId", "ticketId", "contactId", status, "currentStep", "nextRunAt", "lastMessageAt", attempts, "lastError", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: FollowUpEvents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FollowUpEvents" (id, "enrollmentId", "companyId", event, detail, "createdAt") FROM stdin;
\.


--
-- Data for Name: FollowUpFlows; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."FollowUpFlows" (id, "companyId", name, enabled, conditions, steps, "maxSteps", "createdAt", "updatedAt", "autoEnroll") FROM stdin;
\.


--
-- Data for Name: GraphEdges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."GraphEdges" (id, "companyId", "sourceNodeId", "targetNodeId", "relationshipType", weight, metadata, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: GraphNodes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."GraphNodes" (id, "companyId", "nodeType", "entityId", label, metadata, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: GroupContacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."GroupContacts" (id, name, number, email, "profilePicUrl", "remoteJid", lid, "disableBot", "acceptAudioMessage", active, channel, "companyId", "typebotToken", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Helps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Helps" (id, title, description, video, link, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Incidents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Incidents" (id, "companyId", "oltId", "oltName", slot, pon, "ponId", "ctoIdent", region, "affectedOnus", "totalOnus", confidence, status, "autoNotified", "notifiedNumbers", "notifiedAt", "resolvedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: InfrastructureAudits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureAudits" (id, "userId", "companyId", "whiteLabelId", "serverId", "installationId", action, result, ip, version, "durationMs", details, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: InfrastructureBackups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureBackups" (id, "installationId", status, size, sha256, location, metadata, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: InfrastructureDeployments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureDeployments" (id, "installationId", "releaseId", action, status, command, result, "startedAt", "finishedAt", "createdAt", "updatedAt", "idempotencyKey", progress, step, message, attempt) FROM stdin;
\.


--
-- Data for Name: InfrastructureInstallations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureInstallations" (id, "serverId", "whiteLabelId", "licenseId", slug, model, status, version, "lastBackupAt", "lastUpdatedAt", config, "createdAt", "updatedAt", "desiredVersion", "previousVersion", "provisioningStep", "applicationStatus", health) FROM stdin;
\.


--
-- Data for Name: InfrastructureReleases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureReleases" (id, version, sha256, "imageDigests", compatibility, migrations, rollback, notes, signature, "publishedAt", "createdAt", "updatedAt", "environmentTemplate") FROM stdin;
\.


--
-- Data for Name: InfrastructureServers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."InfrastructureServers" (id, name, "machineId", fingerprint, "publicKey", "agentVersion", status, "lastHeartbeatAt", metrics, "enrollmentTokenHash", "agentTokenHash", "createdAt", "updatedAt", "protocolVersion", capabilities) FROM stdin;
\.


--
-- Data for Name: Integrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Integrations" (id, "companyId", name, "isActive", token, "foneContact", "userLogin", "passLogin", "finalCurrentMonth", "initialCurrentMonth", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Invoices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Invoices" (id, "companyId", "dueDate", detail, status, value, users, connections, queues, "useWhatsapp", "useFacebook", "useInstagram", "useCampaigns", "useSchedules", "useInternalChat", "useExternalApi", "createdAt", "updatedAt", "useTelegram", "useWppOficial", "useEvolution", "useGroups", "useAgentsIA", "txId") FROM stdin;
\.


--
-- Data for Name: KipflowQueries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KipflowQueries" (id, "companyId", "ticketId", "contactId", "userId", operation, identifier, "identifierHash", source, status, cached, cost, "requestData", "responseData", "errorMessage", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeAccessLogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeAccessLogs" (id, "companyId", "userId", "resourceType", "resourceId", action, metadata, "createdAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeArticles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeArticles" (id, "companyId", type, title, content, status, "confidenceScore", frequency, "usageCount", "positiveUsageCount", "sourceTicketId", tags, "lastAccessedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeChunks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeChunks" (id, "sourceId", "companyId", "chunkIndex", content, embedding, hash, "createdAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeEntities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeEntities" (id, "companyId", category, title, content, tags, frequency, "confidenceScore", priority, verified, "sourceTicketIds", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeJobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeJobs" (id, "companyId", "ticketId", type, status, priority, payload, result, error, retries, "maxRetries", "nextRetryAt", "startedAt", "completedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: KnowledgeSources; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."KnowledgeSources" (id, "companyId", name, kind, content, metadata, "chunkCount", status, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: LLMProviderConfigs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."LLMProviderConfigs" (id, "companyId", provider, "apiKey", "baseUrl", "isActive", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: LayoutPresets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."LayoutPresets" (id, "companyId", name, "isActive", "companyName", "companySub", cnpj, phone, email, website, logo, favicon, "primaryColor", "secondaryColor", "bgColor", "createdBy", "updatedBy", "createdAt", "updatedAt", "displayMode") FROM stdin;
7	1	Preset ativo HDNET	t	HDNET Fibra	FIBRA					/public/company1/3ab0e12bfba2d70dd2a4aa1d-images.png		#374151	#EC4899	#F6F3FB	1	1	2026-09-16 15:31:14.991562+00	2026-09-16 17:42:42.589821+00	logo-only
\.


--
-- Data for Name: LeadHunterCampaigns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."LeadHunterCampaigns" (id, "campaignId", "companyId", name, status, "totalLeads", "sentCount", "errorCount", "invalidPhones", message, "whatsappId", settings, logs, "aiSummary", "aiSummaryGeneratedAt", "completedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: LgpdExecutions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."LgpdExecutions" (id, "companyId", "contactId", "contactNumber", kind, "requestedBy", "requestedByName", status, detail, "createdAt") FROM stdin;
\.


--
-- Data for Name: Licenses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Licenses" (id, key, status, "validUntil", "maxConnections", "maxUsers", "createdAt", "updatedAt", domain) FROM stdin;
\.


--
-- Data for Name: LuxuryContactMemories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."LuxuryContactMemories" (id, "companyId", "contactId", summary, facts, preferences, "lastIncoming", "recentMessages", "updatedAt") FROM stdin;
\.


--
-- Data for Name: McpTokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."McpTokens" (id, "companyId", name, "tokenHash", scopes, enabled, "lastUsedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: MessageRecoveryRuns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."MessageRecoveryRuns" (id, "companyId", "whatsappId", "requestedByUserId", status, "requestedCount", received, recovered, "skippedExisting", "skippedNoContact", "skippedNoTicket", error, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: MessageTemplates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."MessageTemplates" (id, "companyId", name, body, channel, enabled, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Messages" (id, body, ack, read, "mediaType", "mediaUrl", "ticketId", "createdAt", "updatedAt", "fromMe", "isDeleted", "contactId", "quotedMsgId", "companyId", "remoteJid", "dataJson", participant, "queueId", "isGroup", "participantContactId") FROM stdin;
3EB04ACA336E2106D458E5	Seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA** foi registrado com sucesso! \n\nAqui estão os dados que foram cadastrados:\n\n- **Nome:** Victor Gabriel Duarte\n- **CPF:** 03697523090\n- **Endereço:** Rua Bahia, 123, Centro\n- **Telefone:** 51993032200\n\nA equipe técnica entrará em contato em breve para agendar a instalação. Se precisar de mais alguma coisa, estou à disposição.	1	t			30	2026-09-14 22:55:51.752006+00	2026-09-14 22:55:51.752006+00	t	f	2	\N	1			\N	\N	f	\N
3EB082056993FD13DEA504	Foram encontradas 9 faturas no sistema. Aqui estão as que estão em aberto:\n\n1. **Fatura 79056**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/03/2025\n   - **Status:** Aberto\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/)\n\n2. **Fatura 78030**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/02/2025\n   - **Status:** Aberto\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/)\n\n3. **Fatura 79921**\n   - **Valor:** R$ 79,99\n   - **Vencimento:** 05/04/2025\n   - **Status:** Cancelado\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/)\n\nCaso precise de mais informações ou queira resolver algo relacionado a essas faturas, estou à disposição.	1	t			30	2026-09-14 22:42:44.20364+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3EB010D473A22DCA2D0A1B	VITÓRIA DO GALO! 🐔🔥\n\nCOM O TIME REPLETO DE GAROTOS DA BASE, O ATLÉTICO VENCE O VITÓRIA E CHEGA AO 13º JOGO SEGUIDO SEM DERROTA! 🫵🏼❌\n\nNO FINAL O VITÓRIA AINDA DEU EMOÇÃO AO JOGO, MAS NÃO CONSEGUIU O EMPATE!	3	t	image	company1/843d9d4e05c4388bcd3f4652-wm_media.jpeg	16	2026-08-29 23:25:46.826558+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/843d9d4e05c4388bcd3f4652-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"VITÓRIA DO GALO! 🐔🔥\\n\\nCOM O TIME REPLETO DE GAROTOS DA BASE, O ATLÉTICO VENCE O VITÓRIA E CHEGA AO 13º JOGO SEGUIDO SEM DERROTA! 🫵🏼❌\\n\\nNO FINAL O VITÓRIA AINDA DEU EMOÇÃO AO JOGO, MAS NÃO CONSEGUIU O EMPATE!","directPath":"/m1/v/t24/An9fFv9B3GSC5kiz-OKj28twcEEunhqXPBnQ6et0n9wUuUpB2tX-SnbE52Im-Soi_z9eezYLCYkWFnZZr0ubv8cz-CXNaVSNyKErQ92agFtqSoV4YqJeHvhA2JhGuzNDnA?ccb=10-5\\u0026oh=01_Q5Aa5QE5HztwesgQWZF4qX8AYePBqLUXgezJZYBJEb2tP4tWhA\\u0026oe=6ABAD6B7\\u0026_nc_sid=5e03e0","fileLength":174245,"fileSHA256":"yEzXTzKnjIf0l0MHf8GDu0MQ89G73skI0j+/ratjqWI=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An97T6H9PhWoYaFUhDWdBPPi5jQ8T0fBlmCpLvgqlQdLhJWAYeEQEx-_gaJYj_ydugOTO48VveVnsJF1fYxEh11VaQzOTWfdE52dWJ284r0-QtpTLEWkdL1hrM5JU-diLNNow8kZF3TU_76_qONU4EqRAA?ccb=10-5\\u0026oh=01_Q5Aa5QGVdW3PBGmeXwzgzijlbcQX6gcIPeFPyf7jz-PMWXwKsQ\\u0026oe=6ABAD63B\\u0026_nc_sid=5e03e0","thumbnailSHA256":"4MiEFUlF31X0Pusc8FqTR0FY31KO2kUY+NYSuENJhgg=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"lVfugNRBGv9MD83XvGjrsdJV3AQQfRQ61Ym/8gj3EC8="}}	\N	\N	f	\N
AC3397F1454E5A36367117B68723AC60	RAPAZ! O ATLÉTICO DE MADRID MARCOU O TERCEIRO AINDA NO PRIMEIRO TEMPO! 🔥\n\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \n\n🔗 https://bit.ly/4qFwhgF	3	t	gif	company1/79b39188dd5ecb5b9fafc795-wm_media.mp4	16	2026-08-29 23:21:02.888475+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/79b39188dd5ecb5b9fafc795-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEAAAAAAAAAAAAAAAAAAQIEAwEBAQEBAQAAAAAAAAAAAAAAAAECAwT/2gAMAwEAAhADEAAAAMJpc6YJ3OXA90mXp3uXmWHaQ4+cciU4I6ENKJMoA0AQxA3NDER//8QAIRAAAgIDAAICAwAAAAAAAAAAAQIAEQMSIRMxECAwQVH/2gAIAQEAAT8AwomjF/dcmVEGhQfrs8TFbrhgQgGanoqKpJqouPZqjY2iojKFK0f7PBlsLQAEfASAQwEGFDROSFFWtQTGQBhqs8L2SPUGJwPcCEUSSYdgedE2NdMNHhMpaAEFgep2Azkv4qc+LM7LgM2l/W/prX4v/8QAGhEAAgMBAQAAAAAAAAAAAAAAABIBEVECMP/aAAgBAgEBPwCxhoGjRo0bovx//8QAHhEAAgIBBQEAAAAAAAAAAAAAAAIBEhEiMEFRUlP/2gAIAQMBAT8AKmnuIMJ7Uqv0Us08mdn/2Q==","caption":"RAPAZ! O ATLÉTICO DE MADRID MARCOU O TERCEIRO AINDA NO PRIMEIRO TEMPO! 🔥\\n\\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \\n\\n🔗 https://bit.ly/4qFwhgF","directPath":"/m1/v/t24/An-6lwnnQLGl3fjonqg4DD74dhs3qDFJlSTzx5tkNW-Ue4ZOPCU4E8N_3QrWhyL1RHc7DTDyKvhv_ynLc8JYSR_MhvmmOtY_tMfZf7YVReKS-reOdW9kr8uxbWDIU2aEoA?ccb=10-5\\u0026oh=01_Q5Aa5QGmhn20fJih8LbqNI1A9HbjeGdzuP9ludIoVIgnrkwNyw\\u0026oe=6ABAA6ED\\u0026_nc_sid=5e03e0","fileLength":474414,"fileSHA256":"+8huyWXCcj8VAFLmBD/OGSV8lTfbTTj2qly1uXU54ZU=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3EB038D20D2E4C9DB850EE	UM, DOIS, TRÊS, QUATRO! 👌🏼 O REAL MADRID ATROPELA O MÁLAGA NO BERNABÉU E SEGUE 100% EM LALIGA! 3 JOGOS | 3 VITÓRIAS ✅	3	t	image	company1/f943a8dc8e76e41fc355378b-wm_media.jpeg	16	2026-08-30 17:12:25.514651+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/f943a8dc8e76e41fc355378b-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"UM, DOIS, TRÊS, QUATRO! 👌🏼 O REAL MADRID ATROPELA O MÁLAGA NO BERNABÉU E SEGUE 100% EM LALIGA! 3 JOGOS | 3 VITÓRIAS ✅","directPath":"/m1/v/t24/An_Zz_V_e8kxO2rNQ75D_JIzL0Jh66L77r0Yg1flGh4ktUq8TtDM7lm1v5TmvRKqTpCUnsPCc4CuLDqtEudZHtXOpe5x-RhYE7_JYAZ72J2AoWwb3v5iX8VNCmPqg-gICQ?ccb=10-5\\u0026oh=01_Q5Aa5QEJKVfwwgWsEKFd20gnlayhCJubvxtQcKv2qoBswKo86w\\u0026oe=6ABBC84C\\u0026_nc_sid=5e03e0","fileLength":283175,"fileSHA256":"6pqac20n80e2sC9LwXKha3PrZxwbhiwQPy/3e2gRkxs=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-sy0ZRpVBpaFZQBfgMoJ1Mdh_oVDvLMO_n8rzJb1t5B1UxWhwfuK8_YJO0_0Ge9fX3BpkGkwnTwZfcDZSwGgh9SmCgbfEo4EWzi9oZXkJGfgK7cr5u1p9tGt8LZUGqyHKjta8vAsaWqMkLoJHN0xK4Fw?ccb=10-5\\u0026oh=01_Q5Aa5QEyentyiThbbbQriydOzgw5iZzXn7rExdsb8rpAOoV39w\\u0026oe=6ABBE623\\u0026_nc_sid=5e03e0","thumbnailSHA256":"HryyL7TQgIlnlEFTCAiKRTqHzWZ6iQsAost8GW/n4gc=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"/0GFbkk278cD4KaifRS6HjXWq8rzoKCWyjWLz226NGI="}}	\N	\N	f	\N
3EB001391D8486E17868BB	do completo absoluto nada.......... 😳🤯	3	t			16	2026-08-30 13:55:53.988521+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"conversation":"do completo absoluto nada.......... 😳🤯","messageContextInfo":{"messageSecret":"WgVx2gXYwrlgo5tvSDP8K2FJkp48Hn/y/wohqOuOshA="}}	\N	\N	f	\N
3EB05F7C6AD25C61CFB1FC	CALMA QUE TEM MAIS LALIGA NA TELA DA CAZÉTV! 🔥🇪🇸\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo La Coruña x Valencia com a gente!\n\n▶️  https://bit.ly/4qJQYYZ	3	t	url		16	2026-08-30 17:16:23.103742+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Deportivo A Coruña x Valencia AO VIVO E COM IMAGENS pela 3ª Rodada ...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/4qJQYYZ","previewType":0,"text":"CALMA QUE TEM MAIS LALIGA NA TELA DA CAZÉTV! 🔥🇪🇸\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo La Coruña x Valencia com a gente!\\n\\n▶️  https://bit.ly/4qJQYYZ","thumbnailDirectPath":"/m1/v/t24/An8AU4UaZ_vsPffXRwPw4QcPxgKIGW4SUY2zpTaeJwOjlSRo1uTB6z7vdH-H3Fq0MzDzDPkUo6u5BISljRPv1uZ-hR4AUD1KHVBDqscikb1PjTbzo7yrY_MLj4Q0xVcusRzjxGYO-_iQK1y46SSlSKusKQ?ccb=10-5\\u0026oh=01_Q5Aa5QH-Fm4o9c1jf1qy4_vWvea8GGjB1g-UAoMBp52_aDfRIg\\u0026oe=6ABBC44E\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"UUfnlJ6Q082pdyFs/dJSAUCpmEnbUKtl7QzQmoGBZz8=","thumbnailWidth":1280,"title":"AO VIVO: DEPORTIVO A CORUÑA X VALENCIA | LALIGA 26/27 | 3ª RODADA"},"messageContextInfo":{"messageSecret":"9aQ6RgecEAUmzI3OWS3PQWDvBdQpD/EVk5UmAah5NsA="}}	\N	\N	f	\N
3EB08636823573B8A0A157		1	t	audio	company1/e5d3e11cf608d3a30a516b4c-gravacao-1789481058681.ogg	33	2026-09-15 14:04:19.465912+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0D29CC7A4DAB1E30F80	*Admin*\nvi só agora, fala comigo mano	1	t			33	2026-09-15 14:04:47.060031+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB047E29D749DD74A381C	O HULK METEU UM GOLAÇO DE FALTA PELO FLU! 🤯🤯💪💪	3	t	image	company1/0b7725ee17e1d19544e8fcd8-wm_media.jpeg	16	2026-08-30 14:45:52.147418+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0b7725ee17e1d19544e8fcd8-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O HULK METEU UM GOLAÇO DE FALTA PELO FLU! 🤯🤯💪💪","contextInfo":{},"directPath":"/m1/v/t24/An8iurlPeCnrTlvfszvRzu9-o-HNQnefSVVimR9dIL39NfOZamslghl0poky0esMjcoeQ_UnnPP6ctfKfFyqt_ayZMoOZXoypKTUb-yh1w8pFGSwfPH5Bp5N4dRt-qw57w?ccb=10-5\\u0026oh=01_Q5Aa5QFIGFqBTZgPCnXTGBeJWGUlwwI6-znaXDIxWOmxP0CeWQ\\u0026oe=6ABBAF1F\\u0026_nc_sid=5e03e0","fileLength":299263,"fileSHA256":"GHY/zSJbjnN7r2QdZ5viHl/3/k3pS9fYQRoM5V9TWbM=","height":1405,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-DKYWJKUgmkf38E7ndrTb7daFmaN02o70k70NDe4W0Mu1TEsKZooDjWeMgR8JsZ2UG2bMevkH6KZmg8qqf9UW80vofzBWxnqG__WErDjrt5FzQwLGjpwZwBPZWBExjiW9smEcpxFHtmjXxiFA9qbnyAw?ccb=10-5\\u0026oh=01_Q5Aa5QEtiVFbR1QohHOy1jPWRtJFjA0j65UJB4IzD6T_gjhpsg\\u0026oe=6ABBB9AE\\u0026_nc_sid=5e03e0","thumbnailSHA256":"MkZYv/XfIHH7yShlwjnvL5uc5niPpXCQlh1KFc5UQ6w=","viewOnce":false,"width":1119},"messageContextInfo":{"messageSecret":"jPoPvnbgsePPVppDcmSnXA5kpT9WpMWlIRA8vNIJ8Zo="}}	\N	\N	f	\N
3EB0926E317EE66F0909F5	Meu amigo... Que atropelo do United pra cima do Ipswich Town! E com hat-trick do Bruno Fernandes, ok?\n\nOs caras vão brigar por títulos? 👀🔴	3	t	image	company1/0200a5735dfaa15d96f8fafa-wm_media.jpeg	16	2026-08-30 17:28:28.240506+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0200a5735dfaa15d96f8fafa-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"Meu amigo... Que atropelo do United pra cima do Ipswich Town! E com hat-trick do Bruno Fernandes, ok?\\n\\nOs caras vão brigar por títulos? 👀🔴","directPath":"/m1/v/t24/An_qa2lcnqdYGFjGhidLVhAbM8ecMhR-KLtZnD9wR3e3zGvset5dLzWETS1ZqENdAMrKofnKhrty09KVa4VfETCxMri48DTQWDoriwI1cYzFLsj1OLesnoTdHrC-x7BSJg?ccb=10-5\\u0026oh=01_Q5Aa5QGeT0mZSCUAcVcb0oZVgeexELU5lB9H6sjfadRWHZrB-Q\\u0026oe=6ABBC0AE\\u0026_nc_sid=5e03e0","fileLength":262958,"fileSHA256":"OrNLjWRlpXaUX8VwzTpjRhug959QaRiCBw2k9jFMQYU=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An9tpt1XPweAnuh02zvwVaFHkpcRdJKtWTGBCW01cEhMV9yGd2vlDwZwkBb1xk5gmQ4U48ANMKOh2qeDmPu5UBUnXhxTRLANKs1Ss1kUKxBDd-8D_gb_rJMeTphiuhSgFEkWjyBuG1b1FBlrhRaXwGqiEw?ccb=10-5\\u0026oh=01_Q5Aa5QFVG2h1T6tFt3oRTvUQjPGzMSDBKIDmyuCkDrw6lnM_YQ\\u0026oe=6ABBC529\\u0026_nc_sid=5e03e0","thumbnailSHA256":"cPqgfB1aM96ojUmw21cXRR60IIU8bRHzLd5dd9OBUAQ=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"BEIbdahKdnpVyzcnFf635yhs0+Cv9+oAAwVFk8gKlt0="}}	\N	\N	f	\N
ACF56E1834E8A711F55BE12372F760A1	O INCRÍVEL HULK!!!!!!!!!!!! 💪💪💪💪💪\nE ESSE GOLAÇO DE FALTA DO HOMEM??? JOGA A LUUUUVA, GOLEIRÃO!	3	t	gif	company1/da64f1b60125f799084efc5a-wm_media.mp4	16	2026-08-30 17:32:17.562632+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/da64f1b60125f799084efc5a-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAvAAADAQEBAAAAAAAAAAAAAAAAAgMBBQQBAQEBAQEAAAAAAAAAAAAAAAABAgME/9oADAMBAAIQAxAAAABXg3mltiJSkq7Rh0a668I6Rt5WU8/GoguspDCCOTNaR4WkbGyM1AdRQFK//8QAIBABAAMAAQUAAwAAAAAAAAAAAQACESEDEBIxQQRRYf/aAAgBAQABPwAtyuZpC6Z/IWZ5PxhraHTpetq2MfjH8fx9nEt07HqvERQM2eU1m8L9nJmwJS7R/cerRsOZPOnVZ1KdIs7bJkrm8zSW97vEtYpYr737PKLsNq6QRsPU5IO9kwHfc2YM9dtewjBnvuMUjaLKdqxjDsxn/8QAHhEAAgEDBQAAAAAAAAAAAAAAAAEQAhFRAxIgITH/2gAIAQIBAT8Au8nYtTIqriTfkuNz5f/EABoRAAIDAQEAAAAAAAAAAAAAAAECABEgURL/2gAIAQMBAT8A9t2WYCexXAqFqyGrX//Z","URL":"https://mmg.whatsapp.net/m1/v/t24/An8xz_9bZtoErSDHbBNF4n9ozlxvm8rQ6c-qyqakSkNRXXn8LVkVJRdSVYqApMYTXSMLyPckCeG-Czy6Yu2vCWBnh8XnPbYk91MI3DoesFKKIfzEjhR3INyD4dX_KK2KIw?ccb=10-5\\u0026oh=01_Q5Aa5QFNB8PzBaxONaMWAOTVtdBSDT6Qmq9m9ZgYzNlUwjyqCg\\u0026oe=6ABBE5BE\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"O INCRÍVEL HULK!!!!!!!!!!!! 💪💪💪💪💪\\nE ESSE GOLAÇO DE FALTA DO HOMEM??? JOGA A LUUUUVA, GOLEIRÃO!","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An8xz_9bZtoErSDHbBNF4n9ozlxvm8rQ6c-qyqakSkNRXXn8LVkVJRdSVYqApMYTXSMLyPckCeG-Czy6Yu2vCWBnh8XnPbYk91MI3DoesFKKIfzEjhR3INyD4dX_KK2KIw?ccb=10-5\\u0026oh=01_Q5Aa5QFNB8PzBaxONaMWAOTVtdBSDT6Qmq9m9ZgYzNlUwjyqCg\\u0026oe=6ABBE5BE\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":494649,"fileSHA256":"mrBor8oPmWgKAJ+q6Tj9+b/elZ0WW4EelvQPtswdxLM=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3AF82884D958330D5D4E	Gostaria de ver as faturas em aberto	3	t			30	2026-09-14 22:41:59.658461+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"Gostaria de ver as faturas em aberto","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"pQuAoslyny8juG7VtpM9L4Gx30gk02mgkJhFtay/tOo="},"push_name":"Victor"}	\N	\N	f	\N
AC3E81DE51FB0A880D026D004DCCC99D	O GOL DA VITÓRIA! REINIER SAIU EM VELOCIDADE E GARANTIU OS 3 PONTOS PARA O GALO! 🔥🐔	3	t	gif	company1/597f31c3b153dd3cedcbd6f4-wm_media.mp4	16	2026-08-29 23:30:20.024031+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/597f31c3b153dd3cedcbd6f4-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAsAAEBAQEAAAAAAAAAAAAAAAAAAQIDAQEBAQEAAAAAAAAAAAAAAAAAAQID/9oADAMBAAIQAxAAAADgOOEoko0zVjRMgVCKJneQg6VUEAIsMg//xAAfEAACAgEEAwAAAAAAAAAAAAABEQACIBAhMDESIoH/2gAIAQEAAT8AyBFQx3DV+1fog4K3RcKO41OwcrXyeIssN3gooBFwDvgM/8QAFBEBAAAAAAAAAAAAAAAAAAAAMP/aAAgBAgEBPwB//8QAFxEBAAMAAAAAAAAAAAAAAAAAARARMP/aAAgBAwEBPwCRrT//2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An8NFnP62xL3y4IkVlNaoiKktaLXwXDK0WH360VZUXmgJK8v2-yjG2d4_aANGlRpWVRsBffxObZBTGLkEQWliiwq48rSEKPooKoFuI50G_8RvyIg9SqPui1AdDPCzjBZAw?ccb=10-5\\u0026oh=01_Q5Aa5QGaBYAhFQ0DCv_SANB2TDXUKsVnpQEUYE_9fxGeG9ja4g\\u0026oe=6ABACC26\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"O GOL DA VITÓRIA! REINIER SAIU EM VELOCIDADE E GARANTIU OS 3 PONTOS PARA O GALO! 🔥🐔","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An8NFnP62xL3y4IkVlNaoiKktaLXwXDK0WH360VZUXmgJK8v2-yjG2d4_aANGlRpWVRsBffxObZBTGLkEQWliiwq48rSEKPooKoFuI50G_8RvyIg9SqPui1AdDPCzjBZAw?ccb=10-5\\u0026oh=01_Q5Aa5QGaBYAhFQ0DCv_SANB2TDXUKsVnpQEUYE_9fxGeG9ja4g\\u0026oe=6ABACC26\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":498272,"fileSHA256":"rjNlOaoCPFBgM9uhogihNoBPzuY+u8sa+THYWk2XHJU=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB0BB3BB76E459000B27D	O SÃO PAULO VOLTOU A VENCER NO BRASILEIRÃO! 🇾🇪🇾🇪\n\nO TRICOLOR ESTAVA HÁ 10 JOGOS SEM VENCER NO TORNEIO! MAS ISSO ACABOU! ❌❌❌ ➕3️⃣	3	t	image	company1/e767fd67967e4a005b9e6494-wm_media.jpeg	16	2026-08-30 01:10:29.265065+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/e767fd67967e4a005b9e6494-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O SÃO PAULO VOLTOU A VENCER NO BRASILEIRÃO! 🇾🇪🇾🇪\\n\\nO TRICOLOR ESTAVA HÁ 10 JOGOS SEM VENCER NO TORNEIO! MAS ISSO ACABOU! ❌❌❌ ➕3️⃣","directPath":"/m1/v/t24/An-BUB0S_itHbKmxVeu1cmDAiYjW96P6ONP5mU-8l6v-XRSmJ2yhktLTIjIZVMAOD8dkBzzM8wulSgMVnO6ZEuwbuy3wj5ilY0fa6oEU74JNc9ZXPL9aQgN2gF3CjEiQJA?ccb=10-5\\u0026oh=01_Q5Aa5QGc3ABla4MzioC_xzxUw7uWhWRkQhrsz3veucY41Kzy0Q\\u0026oe=6ABB09B9\\u0026_nc_sid=5e03e0","fileLength":243731,"fileSHA256":"9N281fssFgelC8SQJJ3mxyi6W/Ej6dN3brDpMdAqA2w=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An85s38IxZFbGnxUwmJ4LLAEKfzRW9N09AGEGleprq2p3Frpnxz95SUr3fUjEZ_THkjUXyaCvpAv5sgu9Jy4yGqmNvOJBpAPm9pSCgZhHKdri34DYJ3Lr97GFpf842V__X42oKMUivW4Q32UosU_7THTYg?ccb=10-5\\u0026oh=01_Q5Aa5QEmOgQ5KPhYmFZy6hNjNR6HEArkyDJrRfR0AwItbYmJNw\\u0026oe=6ABAE2CE\\u0026_nc_sid=5e03e0","thumbnailSHA256":"Pa3u2gzlB48lTpvdUfmPHBufhx4odfx92bw569lGBDw=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"HzYTJyFkAQtBQhvABtD9cyKPS6HY06XygF3mfVdjlRk="}}	\N	\N	f	\N
3EB08E9D5FCF9C92AF0D76	VAI DANDO VASCO NO BRASILEIRÃO! TCHÊ TCHÊ ABRIU O PLACAR E VAI GARANTINDO A VITÓRIA VASCAÍNA! \n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	image	company1/a5f3d5ee50b685d1a8b23228-wm_media.jpeg	16	2026-08-30 01:15:22.743805+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/a5f3d5ee50b685d1a8b23228-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"VAI DANDO VASCO NO BRASILEIRÃO! TCHÊ TCHÊ ABRIU O PLACAR E VAI GARANTINDO A VITÓRIA VASCAÍNA! \\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An9FjFyxaIaxHOzefHraV4WsczdgBBXvdYvFO4ZLlgj1YhE6PZuuUQFLs4Tmjf2pTCp2eIKw1e8zU1F_9ThwmIe32Djdv3IEsFZinBl9Vp7YjtoLRsl7PSsK0BCRMI72EA?ccb=10-5\\u0026oh=01_Q5Aa5QEO-t4a31YkR4irHz7uPnZtT02pXJGP-weSqLb9sPizwQ\\u0026oe=6ABAFABC\\u0026_nc_sid=5e03e0","fileLength":139367,"fileSHA256":"QwQxBxDfD2o/8L8qs6uyAlLMAvwA8B/fJxJPeYK0W2s=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An--wMScSuZ_Ztxw7VWmXACPiAGarDQQWBt8bQWJ755I-wxQ173o32OpUaQdzYuIEXpACAi1EZl6LI0A6RaRnkbU3EHd9x6qvYhjs3beUeIGU75uTEq6sc-kmvojL9ZXtwmUAaR1aKXd2f7VgBnZO1LwQw?ccb=10-5\\u0026oh=01_Q5Aa5QF9vC9Z5RahZgvm32aHZAcg1K47DNTnBvoLzNfPoVQ6Xw\\u0026oe=6ABADD0B\\u0026_nc_sid=5e03e0","thumbnailSHA256":"mNsJzgFT4082GGWtjXhKp31vcP0HaCHvNlriCezzy4M=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"WW2QZ6kBk9GwSDry+qqXBHkcWINYcP9MlGeZAft2Tic="}}	\N	\N	f	\N
3EB078E8EA8526B8838E67	*Admin*\no bot não notifica no meu aparelho	1	t			33	2026-09-15 14:04:42.438968+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0E1229265F2CBDC1884		3	t			16	2026-09-14 22:38:42.998257+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"5ujaWIWCgyXqq77vK8BFRHkYbFUNC6X+WA3cAXaO5QE="},"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"O SuperSantos vai longe na temporada? 👀🐋"}}}}	\N	\N	f	\N
3EB028F80A62C40BB83FEE	ALMOÇO DE DOMINGO + REAL MADRID NA TELA DA CAZÉTV??? SIM, É REAL! 🤩🤩🤩\n\n12h rola a bola! Cola com a genteeeee! 🫵🫵🫵\n\nhttps://bit.ly/4gY2nky	3	t	url		16	2026-08-30 14:47:39.973481+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Real Madrid x Málaga AO VIVO E COM IMAGENS pela 3ª Rodada da LaLiga...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/4gY2nky","previewType":0,"text":"ALMOÇO DE DOMINGO + REAL MADRID NA TELA DA CAZÉTV??? SIM, É REAL! 🤩🤩🤩\\n\\n12h rola a bola! Cola com a genteeeee! 🫵🫵🫵\\n\\nhttps://bit.ly/4gY2nky","thumbnailDirectPath":"/m1/v/t24/An_fPOK76WIhnDyCEIaMmnZ9kojjWGDLx0KIsU5lMoQ4eXF7kAvZXNbM_4UcuQMeQ2xyz74xHhqdBnZ0DaJEIKehDh238Oa0Cl2sGe6CM88D7zPE43TYzbb-PUzQ74QOjN7wInLazJweYxQI-5-7-SkKLQ?ccb=10-5\\u0026oh=01_Q5Aa5QE33poGIe_oDCf2wbZe8CinouLXAN-NOqi0hvIx5qvMvg\\u0026oe=6ABBC17F\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"SH1GHz+CEivQcbT7yi5LJddo5knli0acat7/UsEeBWk=","thumbnailWidth":1280,"title":"AO VIVO: REAL MADRID X MÁLAGA | LALIGA 26/27 | 3ª RODADA"},"messageContextInfo":{"messageSecret":"3LG5UFdXC5SDeREauh5B2bdXpM874q3upLPFHpk88o0="}}	\N	\N	f	\N
3EB0273934688867DD6C36	*Admin*\n💰 *Pagamento via PIX*\n\n📋 Fatura: #79056\n💵 Valor: R$ 286.11\n📅 Vencimento: 2026-09-14	1	t	image	/public/uploads/company_1/pix_qr_79056_1789427187.png	30	2026-09-14 23:06:32.18861+00	2026-09-14 23:06:32.18861+00	t	f	2	\N	1			\N	\N	f	\N
3EB0AD500448087E510F41	00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/18db7d82eb14453ba778f12663f000e35204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C102	3	t			30	2026-09-14 23:07:44.740276+00	2026-09-14 23:07:44.740276+00	t	f	2	\N	1		{"conversation":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/18db7d82eb14453ba778f12663f000e35204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C102","messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"0eNf7EMoE9cG2HxkWQ0Wz/p9LcerizrD+f1JiRMN21w="}}	\N	\N	f	\N
3EB0DF088A19CE848790CE	*Admin*\n📄 *Fatura / 2ª Via*\n\n📋 Fatura: #93569\n💵 Valor: R$ 59.99\n📅 Vencimento: 2026-09-15\n\nBaixe o boleto em PDF:\nhttps://hdnet.sgp.tsmx.com.br/boleto/93569-SI27YEOLZ6.pdf\n\n*Linha Digitável:*\n```36490.00019 00042.713602 00000.071373 1 00000000005999```\n\nCódigo PIX para copiar e colar no app do banco:\n```00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/bcb57a5121d74bf18050b4126dbc25075204000053039865802BR5905EFISA6008SAOPAULO62070503***630495AA```\n	1	t	interactive		31	2026-09-14 23:08:22.107625+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1			\N	\N	f	\N
ACAC3146148BDED9AE45F0FF24D3E2DC	DOIS GOLS, DUAS ASSISTÊNCIAS PERFEITAS DO OYARZABAL!!! TÁ MANDANDO NO JOGO 😮‍💨😮‍💨\n\nESTAMOS AO VIVO PARA REAL SOCIEDAD X ESPANYOL! \n\n 🔗 https://bit.ly/45QAAMK	3	t	gif	company1/6e380a8275278fec071ad0b8-wm_media.mp4	16	2026-08-29 23:19:41.464937+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/6e380a8275278fec071ad0b8-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAsAAEBAQEAAAAAAAAAAAAAAAAAAQIDAQEBAQEAAAAAAAAAAAAAAAAAAQIE/9oADAMBAAIQAxAAAADLGqiWysiNIrA6XDnzvILgbc6bYJlMtdLms3NEsFQf/8QAJBAAAgIABQQDAQAAAAAAAAAAAAECEQMQEhMhIDJBUSIwMWL/2gAIAQEAAT8AcINO3TLgtIlyyKfsr5UNMUdPJw+Gao6ao2/6Y8NexwvyxRryyWFGT7mbXHcxQiiWHGRsRE+SxjEy+iyyy8nJt5WXlfVTKyf7H6P/xAAcEQACAgIDAAAAAAAAAAAAAAAAAhNRAWEREjD/2gAIAQIBAT8A7peSRNki7JVolWjny//EABkRAAIDAQAAAAAAAAAAAAAAAAASAQIgEf/aAAgBAwEBPwCbDDDDarHZz//Z","caption":"DOIS GOLS, DUAS ASSISTÊNCIAS PERFEITAS DO OYARZABAL!!! TÁ MANDANDO NO JOGO 😮‍💨😮‍💨\\n\\nESTAMOS AO VIVO PARA REAL SOCIEDAD X ESPANYOL! \\n\\n 🔗 https://bit.ly/45QAAMK","directPath":"/m1/v/t24/An8kNcGT4DDvlH-K-4TJsbN8Bjwgy1-0WDTAtp1gsxqoqYKH2FU0yNKOlW_4uov3rRcssYyiKoJ3K1EiHnksjvzbvOKB1BJN1ALQEclSEsBISwxrFAFwtWoxj8jWI5GQBw?ccb=10-5\\u0026oh=01_Q5Aa5QEnsxaFRlSy7OXVwCFRkH9fogXmsiNU5vfYV_oFkCQhwg\\u0026oe=6ABA9BAA\\u0026_nc_sid=5e03e0","fileLength":511870,"fileSHA256":"6Ww5cY8MLo5bdEu01PPmffPKa3kgjpqCXxzRX7cMoHE=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
ACC1B320F87A105E069060446DC20B63	VIROU MODA FAZER GOL COM 4 MINUTOS??! 🤔\n\nA JOGADA FOI LINDA DO INÍCIO AO FIM!!!\n\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \n\n🔗 https://bit.ly/4qFwhgF	3	t	gif	company1/6c5b3efdea7b7c98176aa47e-wm_media.mp4	16	2026-08-29 23:19:43.459923+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/6c5b3efdea7b7c98176aa47e-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAQIDBAUBAQEBAQAAAAAAAAAAAAAAAAABAgP/2gAMAwEAAhADEAAAAOA63jXm79Bm4X0Z1lpcDArQg4cbrMk1MhbSEokJEVRLhiBuQoQf/8QAIxAAAgIBAwQDAQAAAAAAAAAAAQIAEQMSIUEQEyAiMDFRgf/aAAgBAQABPwBExlG1fyZEUhe2ON5obe5ixjmDEWYwYiKnZ9oMY3EYKFChaJ5jLbKVChYpIe6Gn8hwgsWJ+4mCmBsmo+PUbX1nbb71GIoDFnsx0ZjsaEZTooDf9gq9zDQ56XACfC5XW5ZlmXLl9Ll+RWvi/8QAGBEAAwEBAAAAAAAAAAAAAAAAAAESUTD/2gAIAQIBAT8ApFrS1pa0tbz/AP/EAB8RAAIABQUAAAAAAAAAAAAAAAABAgMRElIjMEFRof/aAAgBAwEBPwC9Cig5bLpfbKy8jTz82//Z","caption":"VIROU MODA FAZER GOL COM 4 MINUTOS??! 🤔\\n\\nA JOGADA FOI LINDA DO INÍCIO AO FIM!!!\\n\\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \\n\\n🔗 https://bit.ly/4qFwhgF","directPath":"/m1/v/t24/An8wKjyi3aJXbUj_Ts27wHPUWYqpovV1XIZbKJs61LSOL_XXRTpOnHJjtPM188vBAvQHMoth9tC4snLU-ZwRZW9KVg9sridFOGzxSk9VM-uYeCmTuFQg30J1iJVJHr-Wcg?ccb=10-5\\u0026oh=01_Q5Aa5QEN6rRKNG9U2ks-kqvGi3djjdDKcw8d12Beq0EZQuHn5w\\u0026oe=6ABAAB77\\u0026_nc_sid=5e03e0","fileLength":453889,"fileSHA256":"YzGgaXz5YJV4BYbPOjoZJm+zorpJK/mHh7pZHm8BOlg=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3AD3330B4E313FBE147A	Oi	3	t			30	2026-09-14 22:41:43.637783+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"Oi","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"Ilhoow4Ki0Eq+ZqlEBtYIoLxRBDvl/bvyUUNJb/Mt3I="},"push_name":"Victor"}	\N	\N	f	\N
3EB0B33881F0FBD589A712	*Admin*\nescreve, meu sistema não entende audio ainda kkkk	1	t			33	2026-09-15 14:04:52.576533+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB056CE716760D1885C36	*Admin*\n💰 *Pagamento via PIX*\n\n📋 Fatura: #79056\n💵 Valor: R$ 286.11\n📅 Vencimento: 2026-09-14\n\nCopie o código abaixo e cole no app do seu banco para pagar:\n```00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/18db7d82eb14453ba778f12663f000e35204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C102```\nAcesse sua fatura online:\nhttps://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/	1	t	interactive		30	2026-09-14 23:06:32.431709+00	2026-09-14 23:06:32.431709+00	t	f	2	\N	1			\N	\N	f	\N
3EB0DA7141C2037E51827A	*Admin*\n📄 *2ª Via de Boleto*\n\n📋 Fatura: #79056\n💵 Valor: R$ 286.11\n📅 Vencimento: 2026-09-14\n\n*Linha Digitável:*\n```36490.00076 00013.819404 00000.239616 3 00000000009999```\n\nBaixe o boleto em PDF:\nhttps://hdnet.sgp.tsmx.com.br/boleto/79056-UB7ZK1HEQV.pdf\n	1	t	interactive		30	2026-09-14 23:07:16.228899+00	2026-09-14 23:07:16.228899+00	t	f	2	\N	1			\N	\N	f	\N
3EB0F423771B56043374A2		3	t			16	2026-09-14 22:41:12.816418+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"70KNdXjY1tvmVW/86kC7vkBE/S7VZEMi1z0rXiAEn54="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"O SuperSantos vai longe na temporada? 👀🐋"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"AC77FC1EFBBB032357762AC3FF27F42E","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"Vai levantar o único caneco que falta Sul-americana 🤍🖤🐋"}},"serverQuestionID":37167}},"inviteLinkGroupTypeV2":0,"text":"acho que chega como um dos favoritos também.."}}}}	\N	\N	f	\N
AC756A20EAC6D3CD9015E78EE5153AD7	Figurinha	3	t	sticker	company1/0a6b4205c6608ec67f22f18e-wm_media.webp	33	2026-09-15 14:04:53.32539+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/0a6b4205c6608ec67f22f18e-wm_media.webp","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"mU63n0gcZjBRSmkFYSNlycYf5vaQp6iACkT5gvkb0pg="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107","stickerMessage":{"URL":"https://mmg.whatsapp.net/v/t62.15575-24/598857819_1399717002345127_5432959946326864147_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHzr9cddcmpmWaA4HY9farTnr5PxrekABn9Nfna3XWJFQ\\u0026oe=6AD0B63B\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"pUzJGuh3Yj8KlHaj8X8hKIDYh+9WpTrsOBVWphfacKw=","mediaKeyDomain":1}},"directPath":"/v/t62.15575-24/598857819_1399717002345127_5432959946326864147_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHzr9cddcmpmWaA4HY9farTnr5PxrekABn9Nfna3XWJFQ\\u0026oe=6AD0B63B\\u0026_nc_sid=5e03e0","fileEncSHA256":"85JsT2xLaceqsICc2e/GI9DwV9OWRK6WynaEilY8G2g=","fileLength":26502,"fileSHA256":"ky4PFgaqg9Oq0ZBTo6Fk/yDM8Y3IDCrWBKq8b+ZbCYo=","height":64,"isAiSticker":false,"isAnimated":false,"isAvatar":false,"isLottie":false,"mediaKey":"pUzJGuh3Yj8KlHaj8X8hKIDYh+9WpTrsOBVWphfacKw=","mediaKeyTimestamp":1789412852,"mimetype":"image/webp","premium":0,"stickerSentTS":1789481092399,"width":64}}	\N	\N	f	\N
3EB0E65F43C1783C1DFCB8	*Admin*\nnem figurinha	1	t			33	2026-09-15 14:04:56.913889+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
ACDC07C5F2540E61F47686C3DCAE07B1	Mano analisar em que etapa temos que está	3	t			33	2026-09-15 14:05:11.638795+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Mano analisar em que etapa temos que está","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"xT7Suq6TNR/cdhbcYoHahVPA97BDRA/D2+2f+vlgFk0="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
AC15E8CB94688422E6A034D023A77429	QUE FURADA FOI ESSA?! ASSIM FOI O GOL DO GALO QUE ABRIU O PLACAR CONTRA O VITÓRIA! 😱	3	t	gif	company1/7b56d26e6799eb969e16384d-wm_media.mp4	16	2026-08-29 23:29:35.424313+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/7b56d26e6799eb969e16384d-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAACAwEAAAAAAAAAAAAAAAAAAwECBAUBAQEBAQAAAAAAAAAAAAAAAAACAQP/2gAMAwEAAhADEAAAAOXV5OqtbVjG/cplbTEgqTGbQnb0opZMTNAwEhABx2rV1vdq5FzsX5nWiUWQycaQH//EACcQAAICAgECBQUBAAAAAAAAAAABAhEDIRIxQQQQEyJRMjRhcXKR/9oACAEBAAE/AJJdno4ijxNWxPlSjEjhbjtox4YdP9Y8btUtFy6McFfElSaikLDllV9GY/Cxbt7E8UU1VNfB7b0c2rQ5m2RxzbTTMWHi7bG6OXUdDZvz9eDyQp+01JaY413NoplFFFMj+RZpx0pOiPi5XcjF4uMtM9XE2l8slCtpnKpce5Yjt5diHVGP61/Rg6P9j+4yCEf/xAAZEQEBAQADAAAAAAAAAAAAAAABABAREiD/2gAIAQIBAT8AllLs4sr54JJz/8QAGhEAAgIDAAAAAAAAAAAAAAAAARAAERIgYf/aAAgBAwEBPwBXM+BWRtQRX//Z","URL":"https://mmg.whatsapp.net/m1/v/t24/An8Cxr6A37EmoM5YSykCvzv3k0azbNc2sQENpGu0zpE-OTGcQ94FDHwKUQCv_sbkO5194P6AEbjq7ZG6m6RtDJzOYHwswaLFbcTNMVU_ngPt0-W-sFGT0se9N8oOL-TS8Q?ccb=10-5\\u0026oh=01_Q5Aa5QE6BHD3YBDljt6S7O9c5H1GyWO7sJfiwfJ0kU6c7PB0IA\\u0026oe=6ABAF5FF\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"QUE FURADA FOI ESSA?! ASSIM FOI O GOL DO GALO QUE ABRIU O PLACAR CONTRA O VITÓRIA! 😱","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An8Cxr6A37EmoM5YSykCvzv3k0azbNc2sQENpGu0zpE-OTGcQ94FDHwKUQCv_sbkO5194P6AEbjq7ZG6m6RtDJzOYHwswaLFbcTNMVU_ngPt0-W-sFGT0se9N8oOL-TS8Q?ccb=10-5\\u0026oh=01_Q5Aa5QE6BHD3YBDljt6S7O9c5H1GyWO7sJfiwfJ0kU6c7PB0IA\\u0026oe=6ABAF5FF\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":500617,"fileSHA256":"51Ik9+tu6R2b62BtB5dHu7rdeV3CHrt31cNgRtpc120=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB021F45896A7CED8B0		3	t			16	2026-08-30 17:29:11.841861+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"United pode levar algum título na temporada?","options":[{"optionName":"sim, dá pra buscar!"},{"optionName":"calma adm."}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
AC061706C93CDC85595AFCADF827BDA2	ELES NÃO QUEREM SABER, O ATLÉTICO DE MADRID MARCA MAIS UM! 🔥\n\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \n\n🔗 https://bit.ly/4qFwhgF	3	t	gif	company1/7534bbb4180d60d80f5d723f-wm_media.mp4	16	2026-08-29 23:21:02.504749+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/7534bbb4180d60d80f5d723f-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAEBAQEBAAAAAAAAAAAAAAAAAQIEBQEBAQEBAAAAAAAAAAAAAAAAAAEDAv/aAAwDAQACEAMQAAAA5J35z6896CTi31WXlvRistiIyxqDVxYqQrK0hKgqCojTI//EACAQAAICAgIDAQEAAAAAAAAAAAECABEDIRASMDFBEyD/2gAIAQEAAT8AGJAjd/fyPjRgpQQYGJn4spYGKi1X2DEoO4cSAzohuXiK1Va9wtqgIGOtAQmzdSgYFUHQlQje42MGrgUL8HFwM0udp2Mvi+bl/wBX4CK8X//EABkRAAMBAQEAAAAAAAAAAAAAAAABEyAREv/aAAgBAgEBPwD2iiKFEUWVzX//xAAeEQACAQMFAAAAAAAAAAAAAAABEgACIFEDEUFSYv/aAAgBAwEBPwBhHGI9HUx6MGPp+rRtzd//2Q==","caption":"ELES NÃO QUEREM SABER, O ATLÉTICO DE MADRID MARCA MAIS UM! 🔥\\n\\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \\n\\n🔗 https://bit.ly/4qFwhgF","directPath":"/m1/v/t24/An-w6nA99NLrzHKtm1D2GpchCxHWY9r8uRwPwMPItXFr0UFQEGHs2NuYMUTz6WcduTN2fxHbmqkhvPUfs8PqtL4mntEdTsIhMpEMmwMuI7He0g_pu6xTfLzNoN1Otz2dcA?ccb=10-5\\u0026oh=01_Q5Aa5QHuzPr3Dhi1Mjr7Y3AcfjFOBaTT9MkOBCiGR1FAk3RQIQ\\u0026oe=6ABA9A5A\\u0026_nc_sid=5e03e0","fileLength":490860,"fileSHA256":"O1iYS+GDwslRzBLjDvA/RUgKeKquaCURVARiltqAZLs=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3EB04D845BCB9DD0C0C6C6	E TEVE GOL DO JP, OK??? ALÔ ANCELOTTI!	3	t	image	company1/55199fc01f58e2e6109debae-wm_media.jpeg	16	2026-08-30 15:11:16.527822+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/55199fc01f58e2e6109debae-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"E TEVE GOL DO JP, OK??? ALÔ ANCELOTTI!","directPath":"/m1/v/t24/An-6jKIEGcr6AvrZgS7Z-dygVrHRoxdjznhLm2lSkuOb0R-2qlIcr1eIHLXSXSR_LNpcv1GQuOSh8nTnkOa3Ah6rx_cL4nX6BfLC3wrxPAKYd97GQdFBAW-lATvR7Z6bUQ?ccb=10-5\\u0026oh=01_Q5Aa5QH9O5fJM_ZO64zqpDSdU3D7AAeOblqOoqJDrnynRr8f7w\\u0026oe=6ABBBD69\\u0026_nc_sid=5e03e0","fileLength":257733,"fileSHA256":"THuJuRccwM6lXc32ux726jV/SWGhBh9VXgMHvzNy+RE=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-QWD5HtiU687g7_5_W-0Nam4pqcjWqo67qyvalYRT1_YGR8LlVWRPGNjnTH1QfZIekVbHrB9wLaign5CjVQxX5KpVy9B0VNIPnnEYq1Q5-GQpDL46I29s-1QBQu8_6f7yuBHt50glnOH5LesFKaJJDIQ?ccb=10-5\\u0026oh=01_Q5Aa5QFDYqZk9JNZAji6eUsBvk4jtIRACkiTCgZv_62tlXSo0A\\u0026oe=6ABBC4A7\\u0026_nc_sid=5e03e0","thumbnailSHA256":"BIyghplbwVeM6gDw4KvideILe2qHmq6NPRr9rOhmqss=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"kd7G/QAGBkxPOpX6t1ie6vc+eXk83W++UoY1yxdlQqM="}}	\N	\N	f	\N
AC08048B20615DF9F8A419A2DAE3448E	COTIA SEMPRE SALVA! 🇾🇪 ANOTA O NOME DO GAROTO: GUSTAVO SANTANA! \n\nEle FEZ O GOL DA VITÓRIA sobre o Red Bull Bragantino!	3	t	gif	company1/0a6e879bc29369c27f6098bc-wm_media.mp4	16	2026-08-30 01:17:23.125874+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0a6e879bc29369c27f6098bc-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAQIDBAUBAQEBAQAAAAAAAAAAAAAAAAABAgP/2gAMAwEAAhADEAAAAPKu9MMr6tjzT0ok4DvJeE9EQqs8rmDnh52DuazGIjBp6CEVWdGhm4ogP//EACYQAAICAQEHBQEAAAAAAAAAAAECABESIQMQIjEyQVIEMFFhYoL/2gAIAQEAAT8ApvGfzCfxF1qkjKbrGoylaoXBl4zvygAoxEYgtAmRFLF9NkSINjhR7Rgp1hGUo/MCAG4VBHTFVFUoi6QqFXiiOBy5QuWUA9oh6oS3DUQUCPuVLs4w7Va4VjMz7tZe4b9ZcymUuXLmUy9r/8QAGxEAAgIDAQAAAAAAAAAAAAAAAAECERITIEH/2gAIAQIBAT8Assc6ZsibEORkzIbbHb96/8QAHxEAAgAFBQAAAAAAAAAAAAAAAAECESFBoRAgIjFS/9oACAEDAQE/AKjbRNXYooVfBx9YG0l2TZPSm7//2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An-YtnliLUpPjjZNrASOuUp8D4VSIxIDzLq8Q98RyLySoD-uuFyz6MEghmbaBPWGNudgf4h9YcBVER9NV2qBBQqLd_29n1Aoa6c71E1y9WA6_OAO5mfFkWQZQFLI95Ikug?ccb=10-5\\u0026oh=01_Q5Aa5QFYkA0GWEzsHxHHjJdwQp-G3IBk48CQqPHFCBuMLewgsw\\u0026oe=6ABAF1FE\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"COTIA SEMPRE SALVA! 🇾🇪 ANOTA O NOME DO GAROTO: GUSTAVO SANTANA! \\n\\nEle FEZ O GOL DA VITÓRIA sobre o Red Bull Bragantino!","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An-YtnliLUpPjjZNrASOuUp8D4VSIxIDzLq8Q98RyLySoD-uuFyz6MEghmbaBPWGNudgf4h9YcBVER9NV2qBBQqLd_29n1Aoa6c71E1y9WA6_OAO5mfFkWQZQFLI95Ikug?ccb=10-5\\u0026oh=01_Q5Aa5QFYkA0GWEzsHxHHjJdwQp-G3IBk48CQqPHFCBuMLewgsw\\u0026oe=6ABAF1FE\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":440478,"fileSHA256":"Hfl8wLATtuvRkiQgLNTwytmJwVuY+baKo4CSwcO/zMU=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB00321B021A82B4B62B0	*Admin*\neles removeram temporariamente	1	t			33	2026-09-15 14:06:13.431244+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB02D8F9226B7B547C22C	O QUE O OTÁVIO TÁ TRABALHANDO É SACANAGEM!!!!\n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	image	company1/29bf4d84920e3aab9368d76a-wm_media.jpeg	16	2026-08-30 01:02:40.213041+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/29bf4d84920e3aab9368d76a-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O QUE O OTÁVIO TÁ TRABALHANDO É SACANAGEM!!!!\\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An_1deYmyF4sKbh3EqXAVyOiV19f-OUcEF0ltwCKhBUjj7c7lCddKAav46eq0_Zsu23EFBnSOa6ept5Dn5hVjmTPXBafwnRFvUrzrQnznBhZ5aPEabKXbKlpsEMkRG0wiA?ccb=10-5\\u0026oh=01_Q5Aa5QHNSTguhkP8JhcaPOO5FdE0O5nTD5nim_3Ldaxjabi6Hg\\u0026oe=6ABAEB06\\u0026_nc_sid=5e03e0","fileLength":252373,"fileSHA256":"Up4d2QMqv3SF5XeSIHgg7PfKUdqQFoV77QGvAa5XTvA=","height":742,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An9PMb31LM1a70_uNPfxqGTKOOFRo-PVk4ujx-0V2Zw5eFqSuluAmgtQOG8Rqjp6LrO5UN6o5r1Bk09e4Ogeg_aKn2KzgRUbDpfZz-sdW3a7Mm5Q75B2dHSdnIgTbWBZZqcQXAom6j8QYpjBOWv42aKSBw?ccb=10-5\\u0026oh=01_Q5Aa5QHHZ2MfWZQJwEUpLufZHSCf7HeSN7z_bMo3ZMOn8VI2Cw\\u0026oe=6ABAFC05\\u0026_nc_sid=5e03e0","thumbnailSHA256":"Hhq7RUk8sR0yAf7+HG9FCQon8V3yxFQuvjB/r2/okSU=","viewOnce":false,"width":1326},"messageContextInfo":{"messageSecret":"HQtK5PxMH8dx1wGVp620i1thW6Td2R11V93ls/RJca8="}}	\N	\N	f	\N
3EB0A6D02CFD1FFAD0272A		3	t			16	2026-09-14 22:40:49.470594+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"7Qs2AbR79d+1l8DwH64kN9Ze89ZuT5plafcE24VAysc="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"O SuperSantos vai longe na temporada? 👀🐋"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"3AF8DD706BA94169C9E6","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"35+ pô , arruma nada kakakakak"}},"serverQuestionID":37167}},"inviteLinkGroupTypeV2":0,"text":"xiiiiii"}}}}	\N	\N	f	\N
3EB0178F5DB1340DF5379F	adicionar gerenciamento de templates para api oficial\nmudar templates de envios SGP\nsalvar preset de layout  ( identidade visual )	3	t			31	2026-09-14 23:11:53.202325+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1789397497},"inviteLinkGroupTypeV2":0,"text":"adicionar gerenciamento de templates para api oficial\\nmudar templates de envios SGP\\nsalvar preset de layout  ( identidade visual )"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"VcjDXD6icZESfA==","recipientTimestamp":1787880939,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"iyiZvZAfeCfR0q0bVU8sHnrbdSRVZZKivpiFKgWiNW0="}}	\N	\N	f	\N
3EB0CB3F3E2D9CC46F1495	A BOLA JÁ TÁ ROLANDO!! ⚽🇪🇸\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo La Coruña x Valencia com a gente!\n\n▶️  https://bit.ly/4qJQYYZ	3	t	url		16	2026-08-30 17:44:42.006142+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Deportivo A Coruña x Valencia AO VIVO E COM IMAGENS pela 3ª Rodada ...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/4qJQYYZ","previewType":0,"text":"A BOLA JÁ TÁ ROLANDO!! ⚽🇪🇸\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo La Coruña x Valencia com a gente!\\n\\n▶️  https://bit.ly/4qJQYYZ","thumbnailDirectPath":"/m1/v/t24/An8AU4UaZ_vsPffXRwPw4QcPxgKIGW4SUY2zpTaeJwOjlSRo1uTB6z7vdH-H3Fq0MzDzDPkUo6u5BISljRPv1uZ-hR4AUD1KHVBDqscikb1PjTbzo7yrY_MLj4Q0xVcusRzjxGYO-_iQK1y46SSlSKusKQ?ccb=10-5\\u0026oh=01_Q5Aa5QH-Fm4o9c1jf1qy4_vWvea8GGjB1g-UAoMBp52_aDfRIg\\u0026oe=6ABBC44E\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"UUfnlJ6Q082pdyFs/dJSAUCpmEnbUKtl7QzQmoGBZz8=","thumbnailWidth":1280,"title":"AO VIVO: DEPORTIVO A CORUÑA X VALENCIA | LALIGA 26/27 | 3ª RODADA"},"messageContextInfo":{"messageSecret":"aWMjJNKArpJThqG5cbZSRfFBmity67O5+RdAmHygwOQ="}}	\N	\N	f	\N
3EB08BEAAB3BED753FF3F0	ok, jogar isso aqui virou uma das metas do adm agora👍	3	t	video	company1/bea6cf0a57f4ca0886395b28-wm_media.mp4	16	2026-09-14 23:22:37.373385+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/bea6cf0a57f4ca0886395b28-wm_media.mp4","messageContextInfo":{"messageSecret":"+Xx3mSvbnbeNgUU/5KSHivwVF5VyxJXLSMJymzWt5Os="},"videoMessage":{"JPEGThumbnail":"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","caption":"ok, jogar isso aqui virou uma das metas do adm agora👍","directPath":"/m1/v/t24/An9iv-DgU4ZAWoiec4VxDOBXw31yN_GS7NFufisr26UlMtT2sMJwm7oCgtrVvjIxt9zeyZSlphoCGoNNsFnaI4226f4BIzrARBahnYKpIJZSjliXL0t09F3tqHBj1RNer5a1?ccb=10-5\\u0026oh=01_Q5Aa5gFADITHFxh6Z4vaXKnQtfMzxm9KsGb1-bHHlskgshgy-w\\u0026oe=6ACFF44A\\u0026_nc_sid=5e03e0","fileLength":6051087,"fileSHA256":"CK4h7B+EZBwuzlivJe9HF/7aYWGhf/+KW8uXNnCU1qo=","gifPlayback":false,"height":1280,"mimetype":"video/mp4","seconds":15,"thumbnailDirectPath":"/m1/v/t24/An-e-9OZEsUPSpCVNANLSVrUeg4S9wPZUWP-CQc9rpRnPXA0VIRL1ojxiAOHbXAMfUe6K5FObN42UrXab15dhnadqQAi74RSgGkG6x4ezz2uecCQVhl7Arixvx4F5iQja99DdAY-G5T9WP59J9mLOsVHSprTqzVhi5V_BFn2QSJ3AXtND3FHOCNlq52BxTdamfqw1DA0stmBiRS17H0rcZSOPr6zt5CfWbMLbQs.jpg$5508683556455381254?ccb=10-5\\u0026oh=01_Q5Aa5gHD-6LvazKb4hHgcJV1sWuKIeEKwW42V8XRi0mrbESMPA\\u0026oe=6ACFDF85\\u0026_nc_sid=5e03e0","thumbnailSHA256":"6vbT6pxnZW30fhhLrcj7KTZ9lr3lOEQU0ExanhXLOVU=","viewOnce":false,"width":720}}	\N	\N	f	\N
3EB0A8B8D715E15EEB49A9	OLHA O VASCO! 💢	3	t			16	2026-08-30 01:39:44.873805+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"conversation":"OLHA O VASCO! 💢","messageContextInfo":{"messageSecret":"2oOAgFDVTVH5g5T7BeHDSb6xWgFlNeGZGp/kw3c9Rtg="}}	\N	\N	f	\N
3EB05826FD2D3E6AC1C7		3	t			16	2026-08-30 15:12:20.684185+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"JP deve ser o 9 do próximo ciclo? 👀","options":[{"optionName":"É ELE!"},{"optionName":"não 👎"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
AC4BF6206C98BE4B3DDB5589DBA60855	GOL CONTRA E O DEPORTIVO A CORUÑA ABRE O PLACAR CONTRA O VALENCIA! \n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\n\n▶️ https://bit.ly/4qJQYYZ	3	t	gif	company1/86be013984c610e4badd1eca-wm_media.mp4	16	2026-08-30 17:54:05.182239+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/86be013984c610e4badd1eca-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAQMCBAUBAQEBAQAAAAAAAAAAAAAAAAABAgP/2gAMAwEAAhADEAAAANlSd+V2lcbWIpSXMrOw4A9WmJ8sJcsa6I5EYgADs5cLNaDUGgYg0ZD/xAAkEAACAgIBAwQDAAAAAAAAAAABAgADESESECIxIDJBURMwcf/aAAgBAQABPwAm3jsY+hAbyoydmWCwghCcxVXQsG41SKw4qIwXJ4nGPMeuthpYtQOggz8RghT2gNA4duQH8E84UtjMJUZHgwAPnm+8ai2sgJ4l5Y6ufAWWO+e1oLG+zGtsEWz8h7EOvmEuCO4CWLWzZbMe5E0oHiNe76hJ+ememQPbqGwAbllpY9c+hrVHgxnLGZmfQNwqR+r/xAAcEQACAgMBAQAAAAAAAAAAAAAAAREhAiBRA0H/2gAIAQIBAT8AgWMFL6SuldH6t0iW1eixS1//xAAcEQACAgIDAAAAAAAAAAAAAAAAAQIREkEhMGH/2gAIAQMBAT8AUq0iU4t6M0ZeFopHHT//2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An-nZatpTE1RaLw0r7aV5XCMriNr4QQnxqXPR9UfWLqDApg3gvEdCJvwoh2Bp8eIV-tt_aO-nZc8GdfX82EE9e0Xt0gfRUQrIl_fSX_pI13hsxraowOkTS2DJetNmbIj8Q?ccb=10-5\\u0026oh=01_Q5Aa5QFftbcul3HKB6b_fxBHHXBEss6sHe_9dqSZGRvHOtOMjw\\u0026oe=6ABBC2F1\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"GOL CONTRA E O DEPORTIVO A CORUÑA ABRE O PLACAR CONTRA O VALENCIA! \\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\\n\\n▶️ https://bit.ly/4qJQYYZ","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An-nZatpTE1RaLw0r7aV5XCMriNr4QQnxqXPR9UfWLqDApg3gvEdCJvwoh2Bp8eIV-tt_aO-nZc8GdfX82EE9e0Xt0gfRUQrIl_fSX_pI13hsxraowOkTS2DJetNmbIj8Q?ccb=10-5\\u0026oh=01_Q5Aa5QFftbcul3HKB6b_fxBHHXBEss6sHe_9dqSZGRvHOtOMjw\\u0026oe=6ABBC2F1\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":506725,"fileSHA256":"JrDkeE4O8nR0/93bjFohLGwwRX2SDFgE4cI+I/AsHbg=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
ACDC6D2E325ADAD3B6C95466B36C8738	ELE CRAVA, NÃO TEM JEITO! QUE GOLAÇO, FILHO! AUBAMEYANG É CRAQUE DEMAIS! \n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\n\n▶️ https://bit.ly/4qJQYYZ	3	t	gif	company1/4648bf9ce54b1d7aef05ff67-wm_media.mp4	16	2026-08-30 18:00:14.483036+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/4648bf9ce54b1d7aef05ff67-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAEBAQEBAAAAAAAAAAAAAAACAQADBAEBAQEBAAAAAAAAAAAAAAAAAAECBP/aAAwDAQACEAMQAAAA9J8vTSnr5bOh6cizKzY46dCOLLAtIUUjSXHHQaRaaUIUqaTbH//EACMQAQACAQQBBQEBAAAAAAAAAAEAAhEDEBIhMiIjMUJRE0H/2gAIAQEAAT8AvzKvHWWFtZr5oh3LOupnVzE1snuxNW56tRjW/HHOFbn3mn/ZLDeYeD3h/Z7uEzNK1++bmXAop5f5MajbymQDqWzZ66PyFr1tlck557akbJQOsz5gBLOdnx2TfolrzMzF9LFzMxZmNpnbM+rv8xE3NnxdjZn/xAAdEQACAQQDAAAAAAAAAAAAAAAAAlISEyBRAQMR/9oACAECAQE/AKkkcOmy4uytZFzrlj7l/8QAGBEAAwEBAAAAAAAAAAAAAAAAAAESIBH/2gAIAQMBAT8AtFIcnUUsp6//2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An93laeAZirIyJQgchk9HRkaUydAwh1LVb8qgH9pUEq99NNSX5QgaeEDntMsFlA2Fo50efo1Rr6Tk55YS6lWA4vOFAnoRy-3rVaZjt9NuyZqC7rbyxZyWbNdNWFIJwz7Uw?ccb=10-5\\u0026oh=01_Q5Aa5QFmv9araeVUaIDuND3j1-RhdzLPi0MUWD9tEXalN-LtdA\\u0026oe=6ABBD1E5\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"ELE CRAVA, NÃO TEM JEITO! QUE GOLAÇO, FILHO! AUBAMEYANG É CRAQUE DEMAIS! \\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\\n\\n▶️ https://bit.ly/4qJQYYZ","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An93laeAZirIyJQgchk9HRkaUydAwh1LVb8qgH9pUEq99NNSX5QgaeEDntMsFlA2Fo50efo1Rr6Tk55YS6lWA4vOFAnoRy-3rVaZjt9NuyZqC7rbyxZyWbNdNWFIJwz7Uw?ccb=10-5\\u0026oh=01_Q5Aa5QFmv9araeVUaIDuND3j1-RhdzLPi0MUWD9tEXalN-LtdA\\u0026oe=6ABBD1E5\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":490944,"fileSHA256":"ClsSce4jWzbY4RGJQQ+AMf+OZrYGLPvdBwj71wq8KNQ=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB0826E337E4EF206D812	GOOOOLLL DO VASCO! LUCAS FREITAS AMPLIA!!! VASCO 2x0 CRUZEIRO! \n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	image	company1/1da615d6b20bd99a8822af2a-wm_media.jpeg	16	2026-08-30 01:41:48.1229+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/1da615d6b20bd99a8822af2a-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"GOOOOLLL DO VASCO! LUCAS FREITAS AMPLIA!!! VASCO 2x0 CRUZEIRO! \\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An_doFX6WmUkj1EdC7o_GU-abmTtbBovqS14gqPDUJIDOhI2U6ikeH-_-U9Toa3Gyap3wOP-F7BmhNNlJc79t7XVX4aUw-qEnwlieGgOIoV8hlwBMv3r1_ql2xdmdXPvRA?ccb=10-5\\u0026oh=01_Q5Aa5QH4bsFtfQjVOyEyObJC4zjR1IwlbfMi_s5UbUM5sRRMaw\\u0026oe=6ABB0AF7\\u0026_nc_sid=5e03e0","fileLength":184297,"fileSHA256":"pYcGcPaPh8pJEskit36/Fe2u2AxGS4V9DzRMZoFrkZE=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-vIdnH2N2gRZUMzxgcOMpX5VW5OkCXNMTVbzB0FcCXn6vgIvly7XR7ziDPvBhbB8cfg6SWtMxGgQ_YCb5L4dekyqLxc0v-0YKLpr6WVzj8Api8YPNzdeIRUd-KHObwmnr4MhlNsrrIZ399phjh_1aUNQ?ccb=10-5\\u0026oh=01_Q5Aa5QGGFZvJr0eppv7Vtx2McWPv37gJr0pwYae_9hqlRQT8Kg\\u0026oe=6ABB15FB\\u0026_nc_sid=5e03e0","thumbnailSHA256":"36abryPi7Q9TCSu70YqyJhP+/e6HcVZm4V0hHoDDZb0=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"iJyWF0y8WxynpNI2/PxEphIAmfnI+/HIg89duuWYf9c="}}	\N	\N	f	\N
3EB0AEE29AB1F13AFC789A	Joga pacar@lho!!!! Bellingham começou a temporada com tudo! Ninguém parou o homem e ele abriu o placar!\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\n\n▶️ https://bit.ly/4gY2nky	3	t	image	company1/cca5ab4c6831af8b04f1d752-wm_media.jpeg	16	2026-08-30 15:27:03.45634+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/cca5ab4c6831af8b04f1d752-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"Joga pacar@lho!!!! Bellingham começou a temporada com tudo! Ninguém parou o homem e ele abriu o placar!\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\\n\\n▶️ https://bit.ly/4gY2nky","directPath":"/m1/v/t24/An9C6_EI41u4QwzxgRKpn9W6TC4dTD-xbGHnpk0oCAg_r7dXiRF16T6h-zJs8BQxAkVgWaTIs4Ct51oTqZzids_OjBzDb-UccNOy0bP0FaJ3OQ4rcfDUIq1gaZ-tSHJ95w?ccb=10-5\\u0026oh=01_Q5Aa5QEz7vtbm5KIqF2Ezs4KIE3jBxq0Cdr5Sk9n7lkYadWDzQ\\u0026oe=6ABBD554\\u0026_nc_sid=5e03e0","fileLength":367738,"fileSHA256":"I1GG4SmOZXP6PnUUxUowg8HPi6d/Ued3axB1uJjAmWU=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-yKLa7hBTNt2r1NcHJzpdTqfzby_a5hQMEHUTh-M2DR9kSnnXU1xzO7g68OtYBWoS0Sr-P2tpNhmiIAPf62GoX_COIHVx6ShKp2f0wBZ_obfs_iF6NHY1taBHrWlWerfe3Qdfci56TgCe1pmWY1R7FAA?ccb=10-5\\u0026oh=01_Q5Aa5QFtYtAqrKsqcN9sVkaZTvy9NyBXeyc_lbfGsN4Hr1gcPg\\u0026oe=6ABBCAAF\\u0026_nc_sid=5e03e0","thumbnailSHA256":"m1FbBr+bZ78EmZoFWmiPh0NuK8ZAjrJDZSEoxm7x3bI=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"SiPhGH77bSCRLuXv21z2aq2x792CfNQpGdq4SEgqIDw="}}	\N	\N	f	\N
ACDD6C6C7F68793737736EF20A77A7E3	SE FOR UM SONHO NÃO ACORDE O VASCAÍNO! 🤩\nLUCAS FREITAS LEVOU SÃO JANUÁRIO À LOUCURA! 💢\n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	gif	company1/0ffc1409364a6e023508b388-wm_media.mp4	16	2026-08-30 01:52:20.804394+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0ffc1409364a6e023508b388-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAADAQEBAAAAAAAAAAAAAAAAAQIEAwUBAQEBAAAAAAAAAAAAAAAAAAABAv/aAAwDAQACEAMQAAAA8vTwpZOhco0VGU0vNymwIIeY3LmXUotBAAcyUUkynJFE0MRH/8QAIRAAAgICAwACAwAAAAAAAAAAAREAAgMhEBIxBDBBUWH/2gAIAQEAAT8AwqrNqdhLZPiDYwy9qWu606w0IqR+DMV7IUHktW4OvJYZCp0f8lZWl/IMBAZnSoDgDSBhHiAAhNrBFKbKe1Da1qrUBp1I6b/cvYFCoAg2CzFEBN6R1HGBATw+FwSEFAuXw44+HH9Yn//EABsRAAICAwEAAAAAAAAAAAAAAAABAhEQEmEw/9oACAECAQE/AMOVG/DfjHJlsvw//8QAHBEAAgICAwAAAAAAAAAAAAAAAAECERIhMDFR/9oACAEDAQE/AMW+h6LVCkkWjOXpfD//2Q==","caption":"SE FOR UM SONHO NÃO ACORDE O VASCAÍNO! 🤩\\nLUCAS FREITAS LEVOU SÃO JANUÁRIO À LOUCURA! 💢\\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An-tSxoncf7oHGE3Tt8y5RVK_WChgX6gnZFm4N_kN0wB6zWwe48vDtXokNJxAXi0NsSGHX1gzeQr5n7UFw_rgn6PvOVVr8wsb2XeqFWfOlM3lAEy1LX3iFUT3mteARBTZA?ccb=10-5\\u0026oh=01_Q5Aa5QHfDUILcnwpn_do8gi1csSnReZejnTVXoA5RpwasYwFMg\\u0026oe=6ABAE18B\\u0026_nc_sid=5e03e0","fileLength":498937,"fileSHA256":"0TDF7SkvYB/zw3fUFbXMidrURwPc9tflJIeE4mFpcEk=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3EB0A358B7FCC618DEB912	e essa provável escalação do Barça para a temporada???? 🤯🔴🔵	3	t	image	company1/f4a732ca75f84a176973e597-wm_media.jpeg	16	2026-08-30 13:57:22.211756+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/f4a732ca75f84a176973e597-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"e essa provável escalação do Barça para a temporada???? 🤯🔴🔵","directPath":"/m1/v/t24/An_WMW2o38SzfEHMHDvs5tUiM4Th2dSGq6CVODXJC8cPQoY-xCvsJzFDffZtYkqbOqq_VJ3r3MgxGm8TaZzw4JHDRnA1iR2U__rr9myk9SHobebxsF_7v7QN2KfIKr7pIg?ccb=10-5\\u0026oh=01_Q5Aa5QFyqjMgT6jR_wl6-g2H_rylkEGGq7r17yM79cQHr3WeQA\\u0026oe=6ABBA858\\u0026_nc_sid=5e03e0","fileLength":219010,"fileSHA256":"4E1uLhfCOC4B7/039XSmBErF5YmZ35aa2moFA51Swww=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An8NQlE_yp6BuW7oDlzBZ9cke_ZVngJ_76AmK9T8dEUUyXPl7eQPSWMK7NZ9ataIi8L4LaEJ9AorWqHJWd9kfEk-hRDsX2jzymjtf19ETHXODRSAYqp2LbZBJ3U2up6DLLlveSJ9-as3p3Z4DYJb0eC1WQ?ccb=10-5\\u0026oh=01_Q5Aa5QHjew9Y5JE2VF31Av7sqNxlk73HfVJUxK8NX5ed6bgkvw\\u0026oe=6ABBB85E\\u0026_nc_sid=5e03e0","thumbnailSHA256":"Pw4SwjKDoY5J3FW7rTC1zeh3Kv5OxEldMZrKIw/TV+U=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"ZLcRdzerI25PulfuiRfzPCUzdWTY0vZgo4/fnASZIsE="}}	\N	\N	f	\N
AC1761150F6EEEA573AA51BF29AD1C85	O QUE FOI ISSO, ZAGUEIRÃO? O VALENCIA DIMINUI O PLACAR! \n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\n\n▶️ https://bit.ly/4qJQYYZ	3	t	gif	company1/7790ea310d1e7b788e7ed424-wm_media.mp4	16	2026-08-30 18:08:19.519739+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/7790ea310d1e7b788e7ed424-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEAAAAAAAAAAAAAAAAAAQIDBAEBAQEBAQAAAAAAAAAAAAAAAAIBAwT/2gAMAwEAAhADEAAAAMZYQtTZwu9Lc5TvUI1tWR4I1hQWpYAtSUWqbjkCUWh0Vyu8Wc533//EACMQAAICAgICAQUAAAAAAAAAAAABAhEDIRASMUEjBBMgM1H/2gAIAQEAAT8AcMKTMjwdI0ldbKxRiqRNJ+I6YsNChLzdUfJFWmfJL1vyhfULrUsfo6I6Qfo6r+DimNaoSi0++yaSrqKXVFrSa0yxQcvBLHKC2XxbNMaTVUfbRZZbY+dcW+bL42JCoadPj3+C5z/rkf/EACERAQACAQIHAQAAAAAAAAAAAAEAAxECEBITICFBQlFS/9oACAECAQE/AOafIXH5hbofMMvcSYdjOwsLbD26KKSxcs1aK63HBmf/xAAZEQADAQEBAAAAAAAAAAAAAAAAAQIREjD/2gAIAQMBAT8A6kdITG0avG65IVXO9Yf/2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An_lxTCWTepMHsyWoiD3utCiXJMCbMQdoIXBJg3k41N3kBIU2lRTezZkfsYaK-NadVIwJeCt_Momwi6Ng0e9IvAJ-LDwG_L_5yXpLvhzfJUI-45vwONdT6Mn1E44ZQwksg?ccb=10-5\\u0026oh=01_Q5Aa5QHkoBGvocc1W-CauaMTpXWiktXgmrrTBkA4CWH0SQXdMg\\u0026oe=6ABBFE56\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"O QUE FOI ISSO, ZAGUEIRÃO? O VALENCIA DIMINUI O PLACAR! \\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\\n\\n▶️ https://bit.ly/4qJQYYZ","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An_lxTCWTepMHsyWoiD3utCiXJMCbMQdoIXBJg3k41N3kBIU2lRTezZkfsYaK-NadVIwJeCt_Momwi6Ng0e9IvAJ-LDwG_L_5yXpLvhzfJUI-45vwONdT6Mn1E44ZQwksg?ccb=10-5\\u0026oh=01_Q5Aa5QHkoBGvocc1W-CauaMTpXWiktXgmrrTBkA4CWH0SQXdMg\\u0026oe=6ABBFE56\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":502543,"fileSHA256":"oqUlNfQF+87nt59zPeLUexOgYJHoSyJvnnO3zDufYzA=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB025238861855E819364		3	t			16	2026-09-14 22:40:05.431787+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"fVrT4VPkWjBYgwUpBDUvvUpCzvN0MNTA1P1FW+oq8i0="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"O SuperSantos vai longe na temporada? 👀🐋"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"AC6F0F72F9843030A9B6BF23DE816DE4","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"Sula já é deles pô "}},"serverQuestionID":37167}},"inviteLinkGroupTypeV2":0,"text":"confiança tá como"}}}}	\N	\N	f	\N
3A80FFADE468A16C3B35	faça o tamanduá imediatamente!!!!!\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\n\n▶️ https://bit.ly/4gY2nky	3	t	gif	company1/0dad7e32d7d862cac456baa2-wm_media.mp4	16	2026-08-30 15:39:30.137135+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0dad7e32d7d862cac456baa2-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"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","caption":"faça o tamanduá imediatamente!!!!!\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\\n\\n▶️ https://bit.ly/4gY2nky","directPath":"/m1/v/t24/An9q9T1ulnsFeEOZPeKCPp8C2PMGh5cFuUm_MTetIybHpECeGDaL0f53bSIwDkltB-ulK0QRZyZIVGsr1LndYVGlnG5nuIpEppraLPJMPnRXxl9t1DlqILYr_6naQYNeew?ccb=10-5\\u0026oh=01_Q5Aa5QFxJsAE94-rd5E9pXXA6AFmIQ1HBIV9196pX2bhIprL1A\\u0026oe=6ABBCF6D\\u0026_nc_sid=5e03e0","fileLength":612081,"fileSHA256":"iEbwtjDCc9jSQSpvvc3SITRMv/dQm+WI/j5KWCtmqLc=","gifPlayback":true,"height":464,"mimetype":"video/mp4","seconds":5,"viewOnce":false,"width":832}}	\N	\N	f	\N
3EB07E45298432797087CF		3	t			16	2026-09-14 23:55:55.331736+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"zEHDZkEnn/n062OH4tsgdLJzJPwyZ8q5m/QnXF15qXA="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"o homem vai salvar o final de ano do Grêmio?"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"3AD1B34EEA62E4B56E27","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"COM TODA CRTZ, MEU PAINATOOOOOOOO😜💙"}},"serverQuestionID":37173}},"inviteLinkGroupTypeV2":0,"text":"reinato sabe muito"}}}}	\N	\N	f	\N
3EB0F663E2FBF54FD38FE0	conclusão que cheguei foi q teve uma lentidão no chatwoot... realmente tivemos uma lentidão complicada hoje.\nComo o padrão são 3minutos, as mídias foram perdidas para o chatwoot	3	t			32	2026-09-14 23:10:04.010234+00	2026-09-15 21:19:07.167997+00	f	f	31	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiator":0,"trigger":1},"participant":"278275360292929@lid","quotedMessage":{"imageMessage":{"JPEGThumbnail":"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","URL":"https://mmg.whatsapp.net/o1/v/t24/f2/m233/AQO2xDAPtF2uuRXtq_p6SHIl2F479e8CQqMPJdmz9QgFdlk_GTAVvuQnuIgottPx9LR-R8MwGbT7Kp5EpE0rzPgNxrUO07ypll_Ohw-9xw?ccb=9-4\\u0026oh=01_Q5Aa5gEIXNaB1Qa_jMXx-sW9yJRdo-FxcROmDS_0RxbkDAYQzg\\u0026oe=6ACFACF7\\u0026_nc_sid=e6ed6c\\u0026mms3=true","caption":"Pessoal, boa tarde...\\n\\nalguém já passou por este erro ao baixo anexo?","directPath":"/o1/v/t24/f2/m233/AQO2xDAPtF2uuRXtq_p6SHIl2F479e8CQqMPJdmz9QgFdlk_GTAVvuQnuIgottPx9LR-R8MwGbT7Kp5EpE0rzPgNxrUO07ypll_Ohw-9xw?ccb=9-4\\u0026oh=01_Q5Aa5gEIXNaB1Qa_jMXx-sW9yJRdo-FxcROmDS_0RxbkDAYQzg\\u0026oe=6ACFACF7\\u0026_nc_sid=e6ed6c","fileEncSHA256":"7unFcakt+Fog8fIS3Lrotisn6yi6MiV9yXSwgpf6sQI=","fileLength":43443,"fileSHA256":"mX89Grw9BJ0LprloVdW17aWKtrpyzvotVwEe4AYImF8=","height":392,"mediaKey":"VDPbH4OlxIkedSp2qvH7iTUUenPdPqKWOygSWGM0GGE=","mediaKeyTimestamp":1789404517,"mimetype":"image/jpeg","viewOnce":false,"width":532}},"stanzaID":"3EB0B14F72E3EB0F271024"},"inviteLinkGroupTypeV2":0,"text":"conclusão que cheguei foi q teve uma lentidão no chatwoot... realmente tivemos uma lentidão complicada hoje.\\nComo o padrão são 3minutos, as mídias foram perdidas para o chatwoot"},"group_jid":"120363360801286419@g.us","group_name":"WAHA - HTTP API | Automatik®","group_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/454369610_547394541458425_2723509238278154743_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gG9yjzhJ7Q5Rflnv3RIh17JnpyBD4zZet7ErsULyf0waw\\u0026oe=6AB59B01\\u0026_nc_sid=5e03e0\\u0026_nc_cat=109","is_group":true,"messageContextInfo":{"limitSharingV2":{"initiatedByMe":false,"limitSharingSettingTimestamp":1767579216223,"sharingLimited":true,"trigger":3},"messageSecret":"XrZGNc1LBv+auHXdGl4yadf8HhbI0L8GvH4gHIhzUXI="},"push_name":"Bruno Oliveira"}	\N	\N	f	\N
ACE3432C6D3F758B971B79134CDF1DBF	E vamos passar isso para eles	3	t			33	2026-09-15 14:05:17.586823+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"E vamos passar isso para eles","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"qCXW3Hm2SPezQP8ljafkJAdJhuT0oD1HaAt2o9s3JBI="},"push_name":"Rogério M."}	\N	\N	f	\N
2A50C9316E809FEB5BE3	Vídeo	3	t	video	company1/1736235d7af5e0160966d27d-wm_media.mp4	33	2026-09-15 13:37:42.251501+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"__mediaURL":"company1/1736235d7af5e0160966d27d-wm_media.mp4","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"B1yvvnToJaCbGQJvtw8mwT/mmSOewBcfn9YSVhljIOA="},"videoMessage":{"JPEGThumbnail":"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","URL":"https://mmg.whatsapp.net/v/t62.7161-24/810248971_1827108502038592_8236627440712969751_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHUrtC1mKRDAiMcH2Jg51-cMUl4xIp7QzsMPTDK0_wI2A\\u0026oe=6AD0B17D\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0,"statusSourceType":1},"directPath":"/v/t62.7161-24/810248971_1827108502038592_8236627440712969751_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHUrtC1mKRDAiMcH2Jg51-cMUl4xIp7QzsMPTDK0_wI2A\\u0026oe=6AD0B17D\\u0026_nc_sid=5e03e0","fileEncSHA256":"7ogxfti6hps+91zq4ggANGVveJBqF/xsXM/OofPeVZY=","fileLength":889777,"fileSHA256":"vMzqLoa1CoFNWxzXpSoQwUAweg5cfCGAq/mAs8rcm3Q=","height":848,"mediaKey":"/38OcW6eTyW7BreHZSg9PfZttItwRwhQySevVvVW8Mk=","mediaKeyTimestamp":1789477310,"metadataURL":"","mimetype":"video/mp4","seconds":5,"streamingSidecar":"lCDtYiiaxevH80EjBZZ9IF23/GDYopUQCZruE7K+tcM5+3hE5DC8vB49eYAOTWY0MkVNXfEGTYnCQj7MJeNhC27Pkvul+gv0UF/gpt9Ym3k3f60zewVYv4pYuyeOz/Y4ZvXBzaOjeVN80ReBq8jRmD2LZ1Uic/OsYFoMw6FyTd4LU62vZOT83ZWbmqQ=","videoSourceType":0,"width":480}}	\N	\N	f	\N
3EB0176FDC396CEB2AED6E	*Admin*\no codex já era o 20x	1	t			33	2026-09-15 14:06:06.016038+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0C8E2F1F52F137955		3	t			16	2026-08-30 13:57:55.038128+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"Quem tem o melhor elenco?","options":[{"optionName":"Barcelona 🔴🔵"},{"optionName":"Real Madrid ⚪"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
ACCED0CFE0F4C78B092C24946AB042CA	Cópias Pix\nBaixar Boleto\nFatura Online	3	t			31	2026-09-14 23:12:59.401164+00	2026-09-14 23:16:14.208813+00	f	f	29	\N	1		{"conversation":"Cópias Pix\\nBaixar Boleto\\nFatura Online","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"VcjDXD6icZESfA==","senderTimestamp":1789177197},"deviceListMetadataVersion":2,"messageSecret":"f3/lMdsdtoumlB0BEWjSSdtiFgrJnGp+syWDFhBTbg0="},"push_name":"‎"}	\N	\N	f	\N
3EB0C3D8F9ADE8C27E2A77	Para acessar suas faturas e realizar pagamentos, aqui estão as opções disponíveis:\n\n1. **Cópia do Código PIX**: Você pode usar o código PIX para realizar o pagamento diretamente pelo aplicativo do seu banco. \n\n2. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\n\n3. **Fatura Online**: Você pode visualizar suas faturas diretamente no sistema.\n\nSe precisar de ajuda para acessar alguma dessas opções ou realizar um pagamento, é só avisar!	1	t			31	2026-09-14 23:13:05.053817+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1			\N	\N	f	\N
3AF2262B9B3901199C49	Gol contra ou gol do BeliGol? 🤔🤔\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\n\n▶️ https://bit.ly/4gY2nky	3	t	gif	company1/b4d976ca89567324639a117a-wm_media.mp4	16	2026-08-30 16:45:01.475646+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/b4d976ca89567324639a117a-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"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","caption":"Gol contra ou gol do BeliGol? 🤔🤔\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\\n\\n▶️ https://bit.ly/4gY2nky","directPath":"/m1/v/t24/An8Rp91sY1RuaIMF4TDa5yVAI2-F7t_-BK2wy7MhvHZT_Je0cob9To8kv1sh7z1m7wULHCE7twcVkhbTOfP-O-G_XNS_1j34pXK6UGfLfdPLoTSZlD2sRFA-LmWfDv8ttQ?ccb=10-5\\u0026oh=01_Q5Aa5QHG74ucD5V-yVGWO7CzWRWWuViVpaSsXGrBglZ9JuHAWQ\\u0026oe=6ABBC0E2\\u0026_nc_sid=5e03e0","fileLength":625774,"fileSHA256":"l6aWnSzl/pMcLQZMPgToR+8vkMWEQmDpA5hlk/EBMiQ=","gifPlayback":true,"height":464,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":832}}	\N	\N	f	\N
3EB0D4FB3D14F8660A652A	Como posso ajudar você hoje?	1	t			30	2026-09-14 22:41:50.247631+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3EB036B5B64E9692B7424E	Não consegui localizar seu cadastro no sistema. Para que eu possa verificar as faturas em aberto, por favor, confirme o CPF do titular.	1	t			30	2026-09-14 22:42:04.69418+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3EB09CF71171A292E83FBA	*Admin*\ntá beleza	1	t			33	2026-09-15 14:05:22.420608+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
AC655B9C4E94251265CB0D277C4AAE96	Não falar nada que não e possível	3	t			33	2026-09-15 14:05:36.782388+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Não falar nada que não e possível","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"5ddtybF4+LZVnAn4NsdIKdnaxFr2RRLckbLUGN3WZZY="},"push_name":"Rogério M."}	\N	\N	f	\N
3EB050B82240F4E150BE42	*Admin*\nmuita assinatura	1	t			33	2026-09-15 14:06:16.210191+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB044A02A1650A03309F4	Sim, estou aqui. O que você precisa?	1	t			33	2026-09-15 13:37:42.420851+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0DE5F926F43CCE0EBE8	🚨🚨🚨 ATENÇÃO!!! ISSO NÃO É UM TREINAMENTO 🥵🥵 \n\nMEMPHIS DEPAY TITULAR PARA O CLÁSSICO CONTRA O SANTOS. O PRIMEIRO JOGO DO ASTRO COMO TITULAR DESDE A RENOVAÇÃO 🔥	3	t	image	company1/d0c52ac69932dcd94b6c0459-wm_media.jpeg	16	2026-08-30 18:09:57.385395+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/d0c52ac69932dcd94b6c0459-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"🚨🚨🚨 ATENÇÃO!!! ISSO NÃO É UM TREINAMENTO 🥵🥵 \\n\\nMEMPHIS DEPAY TITULAR PARA O CLÁSSICO CONTRA O SANTOS. O PRIMEIRO JOGO DO ASTRO COMO TITULAR DESDE A RENOVAÇÃO 🔥","directPath":"/m1/v/t24/An9lei2e3SjzlJfpBcCfT-HfTzNGe9c8tajkevK1enlQDSQOcytrlMicKKCZYvQYrylQ_pMgKipd5_WK1_myYmWjwnoC_Wd8HkoujMPQ4Mxa55s2gyrdJDbj8iqld8ajMg?ccb=10-5\\u0026oh=01_Q5Aa5QHDfuLkOUTK6zCKdp-t26zmmEDpU4VGRS7ncfN51yZxZg\\u0026oe=6ABBD418\\u0026_nc_sid=5e03e0","fileLength":415797,"fileSHA256":"0oOQZvpyBzMZnLqnuUZH4zBlnmeBiI2Lt6/O+kpddQQ=","height":1402,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An9VIXaIFowt2K9ht7JKncZ5tOLWzD80Vt7ZDWyBcPEMy7SEZ4ZP5TrxUbwTpofW62eU-2WlmnTZToX7tkZ27zfF8xKwL3lmvz_AT9hOAB8ssF9nJW2hJfVPzGEDVxIBmlfRfrUqXu6d6TQ8U8AOgFLN4g?ccb=10-5\\u0026oh=01_Q5Aa5QFyici4AwHG9tlkpdhHa281b_KFMs5JTImn9cLSOCT1zw\\u0026oe=6ABBD641\\u0026_nc_sid=5e03e0","thumbnailSHA256":"lLP4vTdbo1vDXL6IffHyyxgulE64MC7/RrAvBaI/QDk=","viewOnce":false,"width":1122},"messageContextInfo":{"messageSecret":"1ATv2A/lRZsebGcjrGi6hy/Kay62tAaNMXsaPLYn9W0="}}	\N	\N	f	\N
ACC39699D698E2D2F3DE02F42B9D62EA	MEU PAI AMADO! 🥵😱\n\nQUE DEFESA ABSURDA DO OTÁVIO EM SÃO JANUÁRIO PRA EVITAR O PRIMEIRO DO VASCO!\n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	gif	company1/766b28e891075a82e971c509-wm_media.mp4	16	2026-08-30 00:46:43.68786+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/766b28e891075a82e971c509-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAADAQEAAAAAAAAAAAAAAAAAAQIDBAEBAQEBAAAAAAAAAAAAAAAAAAECA//aAAwDAQACEAMQAAAA49cnTz0dmWfXBzT1QuBoZdqh88NzRJQSUEjNJcVzMEU4RoSwAP/EACUQAAICAQMEAQUAAAAAAAAAAAABAhEDEBIxFCAhQQQiMkJRUv/aAAgBAQABPwDG4J/VCxzwXagTcZNVHacaSuLo3cngtUxQk21TI45NyFiyv0LFOnuizp5ukh4JM6Zu2kP48l6ZtS5QsuRcMc5SXJcv6Y5zcacmef3pRbXDZvf5RTRXu+xJdlIaotvSyyyzxpHgWj1Wj+1H/8QAGxEAAwACAwAAAAAAAAAAAAAAAAERAhASIGH/2gAIAQIBAT8A2zkVopSiz8Xb/8QAGhEAAgIDAAAAAAAAAAAAAAAAAAERURAhMP/aAAgBAwEBPwA0SrE4rEcv/9k=","caption":"MEU PAI AMADO! 🥵😱\\n\\nQUE DEFESA ABSURDA DO OTÁVIO EM SÃO JANUÁRIO PRA EVITAR O PRIMEIRO DO VASCO!\\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An9_Z1JwtmAWhg6s6DS6FEBgdM086tb7CRLcdfVcm9QqFY43byah4UzECO0G2YZWq6oS8_N2il4LdN6h55XDQWuJEZP7z18MyipVJZiaYWl_VzLHx74VNRsK9gUx1PEQ3Q?ccb=10-5\\u0026oh=01_Q5Aa5QEFr0dfYb5xYPDwfYRRDx-wuQXUaGCBxbU71-xIcY9mlw\\u0026oe=6ABAEC14\\u0026_nc_sid=5e03e0","fileLength":492865,"fileSHA256":"iztOZfCIu4wFshJxQPlXTDkQ+3jdApF0TbjxhrI3FH0=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3AA86D6CD93E5F1F7E31	o tartaruga é fod@!!!!!\n\nGol do homem e será que ele vem pra chuteira de ouro? 😅😅😅\n\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\n\n▶️ https://bit.ly/4gY2nky	3	t	gif	company1/7a52e45d51f5d389dc48db95-wm_media.mp4	16	2026-08-30 16:45:01.992507+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/7a52e45d51f5d389dc48db95-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAASABIAAD/4QCMRXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAAGSgAwAEAAAAAQAAAGQAAAAA/+0AOFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAAAAOEJJTQQlAAAAAAAQ1B2M2Y8AsgTpgAmY7PhCfv/AABEIAGQAZAMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2wBDAAYGBgYGBgoGBgoOCgoKDhIODg4OEhcSEhISEhccFxcXFxcXHBwcHBwcHBwiIiIiIiInJycnJywsLCwsLCwsLCz/2wBDAQcHBwsKCxMKChMuHxofLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi7/3QAEAAf/2gAMAwEAAhEDEQA/AObm0GSRWNsqxedtzjndn1UgdO+aoXVncwQuzSKpV9zMoCttI2jIBI7V3iW5yA7LJOkhLgrtzkYA7Zx+NYv2KOOwlR2HzBgFXBBLHG4Hkhc4rdRtojpaW7ORi0oTXBtpU2JnCyg5Vm7jp/k1bOgvAkcihZvlJKNyUX14FdEul7YERI9jpwWaYquSOcY4ByOnfvWhFbm1UmHaHdcMM7iMjlvdTRyph7PscfJo0o8vaIBuKlOTtwOvbqagl0uMXDIkEW5iFkQMGGD17dfauvaFI4Gjgma3VCCGI284+b72dxPXpVMRXT27X6yiNw2BKgAJ44UDkD1OetOwcutjgNU0V4NrJb5gIOAuGYHOMnHYfypsHhyaQlb2D5VGBs6MQeSR3+gr0OJClxJEwCB8PmMBmYgc5weOasXzNO0D2zEs25G2bflGPccZ70uVC9mnueat4YtTwYyAOsjK2Av0GT06VTl8NWCIskk0fQ4X5h7g8j09a7+4W9RUt423Rh85jOW2kcjv8o96ii0zDNdSIZnKEqoYt82eG5+Un37UrC5EedN4bt7lF/s91O/ozsAFI6g+v4U258JzROqIGZm4+XBU++a9LS3jUhbiBMSnbnbhQeu7IPTPWlTSdPazWeaIWwRm437AxBwCAOBnuaXKg9mjyePw1eAEZXIJBzzUn/CNXvqn5V6Y9norKjXLQRSFfmUyMe55BU4wRz60z7D4f/572/8A33L/AI0+UXs0f//Q2TBOSZJowHWTzVUHgoBz7fnWGZIjqcasEtYYXK+VKQedpyykY+Xpgn8qrCOfcGeVsjuM8frXQRX9v83nRRS7mJBmXJGe2aPrdLbmOmVSn0l+BUlkjuJlRyvleWWVVwVLKfmKdMnkZ9PSoFgubUK0wjkWR8BGO3PHTAHBB9cA1TkjuBNiNRtifMeMceZydue3rzU8Ml684tZZWiaU/M7AdOvOeCK6IvmXMjRKMl7skzSljneGf7VGOVUqSfm3g9QoH/1qW3t54YrhbjkIFdXi/iJ6AAfzpRYX8N0bxRHcSLkD5iF5GenTBqEatcWYlgSOPejKqDbjAPUdeMdqV0nqFtNiI/2c87XL7TKCQrhCcBFydw6n+VZbwT3UqXTq+0P+7WPbE6DHK5GR7tn6Zrfhn0ieES2yiSZP3Lu3yvlsggZ6896049Mkhb/SDE6yRhEj4I5PALcE57mslXpt8t9RGAtlbwySPGnmMYtqkAKx55BwecY6+lOfTfKij+zKHct5YbPKDqSoycn1B7VpSfaIBJG7xhYwFWFG2vgHsR6e4rAF1Fb37xRWeZGV4gqno7HJI7FT19a1umroBphlX9x5XlxuSBulRd24ZCk5OMkZwRUU9uJ7LdJAvk7N3nEnqCd/ynk+2OtTPoiwSi5nkEzlvmXaMAAZOAffuT0rRlchSvmxSyxHIZCyvhh7ZBXHXHFK3Qe5g2XhhriASxzKoJ/hUHOOhOe+McVc/wCESm/5+P8Axxa6O3KwRCO6Zw/rvj+Ydjg8j6GpvtFp/ff/AL7jp2QH/9HXeGCQfMQfcVUeygP3Wb8azElKfcJq7bzyzSpDgFnYKO3JOK8NVIy0aMRjWzR8qCfoajeeUoY27/n+dacjeRO9tL8rxsVb6iqzS7rrySoKbNxb/az0/KtIpr4HYaXYzrVI7W38iIyId24OGyRnt2yPrVs2MF7+8F2RM2N3mD5SfXtWg9uiBVeMpuG5W9Qe/NUEQTmQRuR5blCGGMkAHjH1reGJrw1vc6qOLnTXKkmv667mRc293ZSbJFVwpBDIcAntgGui8OXNpE7wXrPFKpMieYpIwFwfmIK8Z6Zqi8EycHO0/iKmgvZbQ5VUcYK4PHB+ldH12FRcteFy6uN57csbfj9236m+2q2t3K1nPaW9wjy/K6jaxzxkkZ9a1Z7bT7dQxaS0M37vIVXXd0UngHj/APXXF/a7N3DSRKp9QCCPxBq3Fci8ZU86QKJFwrkOOD6nBrqo1qNrU3b5Ee2g2rqxp39qLWF5y6XCKcsfLILFeOoPJA9awjq5jnVbYpHC5G8hSJFQDv8AQD0x6107Tvp0dxL5a3ClmbarANn0AbrXnOqajFcXT/u5LSOVSCjrjgjDDPIwa6VCUl7ljVSUnpJfPQ6Z9QsmdszRyYJ5KDj6ZI4PX8ab9usf70X/AH7X/GuS2qwBtWiSMAAKqggYGOOaTy5v+ekf/fH/ANlUOD7A6yTs2j//0pPMilupIZoyNiqQ2Nu7PoehxUyReW4lgbJXlQ3ykN2OfY809bgyjDYfvz1/xpS0fdPyJFeO0nqjNvsUruSWSYzTqwZ8bixJyccnJ9apiUI4RGG5s8Z5wOvHpWk11CJ47XcU35J3HK4+pGM1NqMWn3EqSwJsG0bWAH0OQPXFDpPWTZVrK7KjX00mzzADsULnnJA96uTW0NssMiSZa4jEjZ7H0z3wOtZj2txjMWJB/s/1HWopZZ5giSsT5S7VHTArL2skmpE3Nddw6Gq0MsN00u5QdjleQVPFZ6tIn3WNPjnERO7qeTTjWi1ZoV9C+1pC/wB1tp9Dz+oqrJZv1YggnJOe9NhuCHkDnlm+X0244q4JSe1U0tkDKg8yP7sn9aSScMpSRS304/Q5q2wRx8wxUDW6n7rUryWxVOpKElODs0NgXQxHi6skkfJyzICamx4b/wCgdF/37H+NVDbsD0zSeQ392tli6605n+Ju8bUbu7fcv8j/06fmelPFy44Y5FUMn1pQa+ZU2tjI0A0UnJPP+FShSORWYAakWaSPvmtlW/mBmkHKkH0705pRJ/rQHz69fz61SW4VuvBqTII4NaqSa0EK1vExxE5Uns39CP61l2/nbHMyniRgD1GAeOa0sdqcrtH91sfy/KjlVmik9LFL5TUqeaOYwcfpU7Bm5QhT/sgVXZLjq2SPeudwcSSyspXiUqPx5/rVlZLUjmQk+gGP51lbOxNLtA45q41JdgNjdB2Un/gWP6Ubof7h/wC+v/rVlDAGKXI9a09p5Af/1M0p/c/KoCccEVdKP9Kb5anhq8CVPsZFLzMUeb61K1vtOU5qLkcYxWDjJDFOT0FOUyL0OBUfPWlzihILF6OZD9/NWgEIyuKx6erMnKmt41O4rGoeP4qVX45Gappcr0cYqZXQ/dOa0TT2Cw9wr9Bg+tRGBx0bNPLY6Ub/AMaHFPcCsVIOCKTB9DVvcKTI9an2SA//1W96iPJqXvUXc15DMwxxmq8qhuTVntUD1m9gM802nGm1zjDJzigk0h60N1qRCEk9abvZT8pxS0w9aQGhC7OPmqx0qpb9KuGu2OwC5NGTSUVQj//Z","caption":"o tartaruga é fod@!!!!!\\n\\nGol do homem e será que ele vem pra chuteira de ouro? 😅😅😅\\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Real Madrid x Málaga com a gente!\\n\\n▶️ https://bit.ly/4gY2nky","directPath":"/m1/v/t24/An8r14jKrRWi7A3-UUFSHO9HntoHKLIkh-xQxKIS_Knqub-iQeNY4UAGGHFzIm1d0iEIUJktx4A6Rli1hSlN_-3zmX8H2BS6qC6n4LH6850b9ZgOcoWIgkZnPj-ttmO-bQ?ccb=10-5\\u0026oh=01_Q5Aa5QGsJZx2RdqIgYLmw4-OTuG36yv9XT8tUXm4x61oSZCBQA\\u0026oe=6ABBBDD8\\u0026_nc_sid=5e03e0","fileLength":776466,"fileSHA256":"AXgMjdkqoFW9yIw21mtflMLkgQ4l2XeCEzYzTWnoFrQ=","gifPlayback":true,"height":464,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":832}}	\N	\N	f	\N
3A537C85E1F1354E497D	11929735502	3	t			30	2026-09-14 22:42:32.360658+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"11929735502","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"j0B0a8KVGvy0NyoJz25BZguAf3MpJ7/UEVinyQx/J5s="},"push_name":"Victor"}	\N	\N	f	\N
3EB0E5B21818152D7AD8		3	t			16	2026-08-30 18:10:36.754603+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"Quem vence o clássico?","options":[{"optionName":"Timão! 🦅"},{"optionName":"Peixe! 🐋"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
3EB0695AC76C41B72FB961	GABRIEL MEC NO PORTO! 👀🐉🇧🇷🔵\n\nO FC Porto fechou a contratação da promessa do Grêmio, Gabriel Mec. O meia vai se juntar a outro ex-imortal, Pepê.\n\n🗞️ Fabrizio Romano	3	t	image	company1/4b3666b08501f7f59cb0045c-wm_media.jpeg	16	2026-08-30 16:45:02.446731+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/4b3666b08501f7f59cb0045c-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"GABRIEL MEC NO PORTO! 👀🐉🇧🇷🔵\\n\\nO FC Porto fechou a contratação da promessa do Grêmio, Gabriel Mec. O meia vai se juntar a outro ex-imortal, Pepê.\\n\\n🗞️ Fabrizio Romano","directPath":"/m1/v/t24/An9fEoNiWw-WxQ5Qs9XqudA7scAD4lIpJOm7vKF-43DW2Iq7L3O4VGzD9mXMf89XQkZTC2Vg624kL4MXyR_zIwngzkf_X4mHXmsMby_GbnFQ9xGZGruYtnYiU0Tg69OLXA?ccb=10-5\\u0026oh=01_Q5Aa5QEXYKZ0EROvr-UihxWst0U-5M4eW0ezEmp-_AE4AnxMYg\\u0026oe=6ABBC7FC\\u0026_nc_sid=5e03e0","fileLength":226554,"fileSHA256":"Siks5TDjpIFMgFtxq5oE761rZ1De34LH1Ru/B7vsX0Q=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_0wLl0rcX6EB22J_hF1OIgNEyArjQ6rbCG4B5Yi1eJUTYW9j9zRVyZswKtC1pTGol7EPNDofLIFivsgkQKfKb5czPFSSgA63Xx-yoNF7195VG_InCxWP9s-R_ROv1hWIXCjqEWx8Mj-PxAtL7DM1Ahhg?ccb=10-5\\u0026oh=01_Q5Aa5QGsXb3cmW-l17vEHKwgQvJV1wEt3m970siv16g9xh4Sug\\u0026oe=6ABBD678\\u0026_nc_sid=5e03e0","thumbnailSHA256":"H6qdfl32C0pkpy9YnhPvpMCTbSe8qy0bLE+/he015ms=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"YXXyU8p3QC1Lvcc6cwKLYJiflk5VtTGSKoBSVWSFJv4="}}	\N	\N	f	\N
3EB02C65CD62D3707D3DE6	DIA DE COMEMORAR OS 123 ANOS DO IMORTAL TRICOLOR! INDEPENDENTE DE QUALQUER MOMENTO, O GRÊMIO FOOT-BALL PORTO ALEGRENSE SEMPRE FOI, E SEMPRE SERÁ, UM DOS MAIORES CLUBES DO BRASIL! 🔵⚫⚪\n\nFELIZ ANIVERSÁRIO!!! 🥳🥳🥳🥳🥳🥳🥳🥳	3	t	image	company1/8260d1577ec7a289e0fbaa88-wm_media.jpeg	16	2026-09-15 13:38:57.63849+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/8260d1577ec7a289e0fbaa88-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"DIA DE COMEMORAR OS 123 ANOS DO IMORTAL TRICOLOR! INDEPENDENTE DE QUALQUER MOMENTO, O GRÊMIO FOOT-BALL PORTO ALEGRENSE SEMPRE FOI, E SEMPRE SERÁ, UM DOS MAIORES CLUBES DO BRASIL! 🔵⚫⚪\\n\\nFELIZ ANIVERSÁRIO!!! 🥳🥳🥳🥳🥳🥳🥳🥳","directPath":"/m1/v/t24/An8vOOnGHfXUnqPdgOIFUSpOteK8uDrcambSUwFTDM6zZgaWAaZtvjeQtbWZ8cviCi3s62dTBFUqogtZNxpifA2UZx5YWqOHjz1wNAFoiBXI4soLvumYGWy3IuzIkvr2mw?ccb=10-5\\u0026oh=01_Q5Aa5gF0tbbHrcnKDQWpZHPBWztrfBP_KorvK-VxbwJqn7JEQg\\u0026oe=6AD0BEA9\\u0026_nc_sid=5e03e0","fileLength":508069,"fileSHA256":"gJJ6b0YHWpaRSr87WndIaRUIwWS8++0spuK1avWGaI0=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_PjqWpGbZYrLSr5nhlFYUtAwghla04ujRGBgJf8Bs-mjAzDMpyIrnreihUrnpQ9FPap-CPBQqUZWmwGdezGJrrvf136nDgdOAaTU55gaDddGcpmGHhb7T2J71GXdwUPIJrhsA-wx7O4S8dhaNNy4zixg?ccb=10-5\\u0026oh=01_Q5Aa5gGEX_Sn9Zp3WpL_twecnGYL5gNp-KamqIAaHfpaHw7_-Q\\u0026oe=6AD0ADEA\\u0026_nc_sid=5e03e0","thumbnailSHA256":"c/y4KeM+HU/9Z9wZlfYqhV4U7rc+2GUusK+Pn7IRkUM=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"2YBz3PNih2dP3GZSbJlrJz2oeOX6R98iQ7qY5tZqfuc="}}	\N	\N	f	\N
ACC0EBF84C6A47D54C9CB14D4F789F2A		3	t			31	2026-09-14 23:10:27.486225+00	2026-09-14 23:16:14.208813+00	f	f	29	\N	1		{"interactiveMessage":{"InteractiveMessage":{"NativeFlowMessage":{"buttons":[{"buttonParamsJSON":"{\\"copy_code\\":\\"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br\\\\/bolix\\\\/v2\\\\/cobv\\\\/bcb57a5121d74bf18050b4126dbc25075204000053039865802BR5905EFISA6008SAOPAULO62070503***630495AA\\",\\"display_text\\":\\"Copiar código Pix\\",\\"payment_setting\\":{\\"type\\":\\"pix_dynamic_code\\",\\"pix_dynamic_code\\":{\\"code\\":\\"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br\\\\/bolix\\\\/v2\\\\/cobv\\\\/bcb57a5121d74bf18050b4126dbc25075204000053039865802BR5905EFISA6008SAOPAULO62070503***630495AA\\"}},\\"type\\":\\"PAYMENT_REQUEST\\",\\"payment_settings\\":[{\\"type\\":\\"pix_dynamic_code\\",\\"pix_dynamic_code\\":{\\"code\\":\\"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br\\\\/bolix\\\\/v2\\\\/cobv\\\\/bcb57a5121d74bf18050b4126dbc25075204000053039865802BR5905EFISA6008SAOPAULO62070503***630495AA\\"}}]}","name":"payment_request"}],"messageParamsJSON":"{}","messageVersion":3}},"body":{"text":"Fatura SGP\\n*Admin*\\n📄 *Fatura / 2ª Via*\\n\\n📋 Fatura: #93569\\n💵 Valor: R$ 59.99\\n📅 Vencimento: 2026-09-15\\n\\nCódigo PIX para copiar e colar no app do banco:\\n```00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/bcb57a5121d74bf18050b4126dbc25075204000053039865802BR5905EFISA6008SAOPAULO62070503***630495AA```\\n\\nSGP Provedor"}},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"VcjDXD6icZESfA==","senderTimestamp":1789177197},"deviceListMetadataVersion":2,"messageSecret":"UbFczmZHLC79IL7QdHizo7xVN8gckNkEcwrUFfuMwYw="},"push_name":"‎"}	\N	\N	f	\N
3EB03F3D43E051D83A1017	```\nPOST /whatsapp/send-copy-button\n```\n\n### Body JSON\n\n```json\n{\n  "jid": "5511999999999@s.whatsapp.net",\n  "body_text": "Sua chave PIX para pagamento do pedido #1234:\\n\\nemail@empresa.com.br",\n  "code": "email@empresa.com.br",\n  "button_text": "Copiar Chave PIX"\n}\n```	3	t			31	2026-09-14 23:11:13.499236+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1789397497},"inviteLinkGroupTypeV2":0,"text":"```\\nPOST /whatsapp/send-copy-button\\n```\\n\\n### Body JSON\\n\\n```json\\n{\\n  \\"jid\\": \\"5511999999999@s.whatsapp.net\\",\\n  \\"body_text\\": \\"Sua chave PIX para pagamento do pedido #1234:\\\\n\\\\nemail@empresa.com.br\\",\\n  \\"code\\": \\"email@empresa.com.br\\",\\n  \\"button_text\\": \\"Copiar Chave PIX\\"\\n}\\n```"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"VcjDXD6icZESfA==","recipientTimestamp":1787880939,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"Y+usm24PGfm/84+HCHzzXb1w7LKWhe+OfE5bTD+csms="}}	\N	\N	f	\N
ACD2CC9319842411676653503FB11035	Código Pix\nCódigo de Barras\nBaixar Boleto\nAbrir Fatura	3	t			31	2026-09-14 23:16:13.927616+00	2026-09-14 23:16:14.208813+00	f	f	29	\N	1		{"conversation":"Código Pix\\nCódigo de Barras\\nBaixar Boleto\\nAbrir Fatura","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"VcjDXD6icZESfA==","senderTimestamp":1789177197},"deviceListMetadataVersion":2,"messageSecret":"ueJ9VSgViykbYN9FIwjsxus+J5uxGzgcOxSJqrE+D5M="},"push_name":"‎"}	\N	\N	f	\N
3EB06331F4D0226FCFD686	Para facilitar o pagamento da sua fatura, aqui estão as opções disponíveis:\n\n1. **Código PIX**: Você pode usar o código PIX para efetuar o pagamento diretamente pelo aplicativo do seu banco.\n\n2. **Código de Barras**: O código de barras da fatura pode ser utilizado em bancos ou casas lotéricas para pagamento.\n\n3. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\n\n4. **Abrir Fatura**: Você pode acessar a fatura online para visualizar todos os detalhes.\n\nCaso precise de assistência para acessar alguma dessas opções, estou à disposição para ajudar!	1	t			31	2026-09-14 23:16:23.560847+00	2026-09-14 23:16:23.560847+00	t	f	29	\N	1			\N	\N	f	\N
3EB0E1C0381B9C9BA6145D	*Admin*\nsim sim, entendo.\n\nOque a gente vai fazer referente a leitura irmão? precisamos voltar pro trampo.	1	t			33	2026-09-15 14:05:54.505254+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0F936A5280238364FCA	A consulta às faturas revelou que existem 9 faturas no sistema. Aqui estão as que estão em aberto:\n\n1. **Fatura 79056**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/03/2025\n   - **Status:** Aberto\n\n2. **Fatura 78030**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/02/2025\n   - **Status:** Aberto\n\n3. **Fatura 79921**\n   - **Valor:** R$ 79,99\n   - **Vencimento:** 05/04/2025\n   - **Status:** Cancelado\n\nSe precisar de mais detalhes ou quiser resolver algo relacionado a essas faturas, é só avisar.	1	t			31	2026-09-14 23:10:38.050074+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1			\N	\N	f	\N
AC2E6157B2AF9CF229E26D973951260C	Analisa lá	3	t			33	2026-09-15 14:06:32.30462+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Analisa lá","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"wsivVmxlqQc21EHHUO/T0Jb367noVkddEyT/MEaeb7w="},"push_name":"Rogério M."}	\N	\N	f	\N
3EB09FC3B32ADE6BF5A218	Parece que a mensagem não está completa. Poderia fornecer mais detalhes ou esclarecer o que você gostaria de saber?	1	t			33	2026-09-15 13:40:52.052494+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB07A84789D7B006CE6D1	Foram encontradas 9 faturas no sistema. Aqui estão as que estão em aberto:\n\n1. **Fatura 79056**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/03/2025\n   - **Status:** Aberto\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/)\n\n2. **Fatura 78030**\n   - **Valor:** R$ 99,99\n   - **Vencimento:** 05/02/2025\n   - **Status:** Aberto\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/)\n\n3. **Fatura 79921**\n   - **Valor:** R$ 79,99\n   - **Vencimento:** 05/04/2025\n   - **Status:** Cancelado\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/)\n\nCaso precise de mais informações ou queira resolver algo relacionado a essas faturas, estou à disposição.	3	t	url		31	2026-09-14 22:43:19.234331+00	2026-09-14 23:16:14.208813+00	t	f	29	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1789397497},"description":"https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/","inviteLinkGroupTypeV2":0,"matchedText":"https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/","previewType":0,"text":"Foram encontradas 9 faturas no sistema. Aqui estão as que estão em aberto:\\n\\n1. **Fatura 79056**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/03/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/)\\n\\n2. **Fatura 78030**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/02/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/)\\n\\n3. **Fatura 79921**\\n   - **Valor:** R$ 79,99\\n   - **Vencimento:** 05/04/2025\\n   - **Status:** Cancelado\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/)\\n\\nCaso precise de mais informações ou queira resolver algo relacionado a essas faturas, estou à disposição.","title":"hdnet.sgp.tsmx.com.br"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"VcjDXD6icZESfA==","recipientTimestamp":1787880939,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"FRGf5cCrFUd9yX29HTiw3mpv9RWk5RTY24wwz97Mvkw="}}	\N	\N	f	\N
3EB04B0EF112768482E9		3	t			16	2026-08-30 18:14:42.756983+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"Quem vence o clássico do Rio?","options":[{"optionName":"Mengo! 🔴⚫"},{"optionName":"Fogo! 🔥"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
AC2A76A3C248196B446F41C7C76EA7D7	E já vamos cobrar a ia, falar que esse final de semana vamos usar o Claude e Codex	3	t			33	2026-09-15 14:05:58.499463+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"E já vamos cobrar a ia, falar que esse final de semana vamos usar o Claude e Codex","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"a4hl9t80Y5b4MsTtzgE4TW1krb9tnjzVtHSTRbTcV6E="},"push_name":"Rogério M."}	\N	\N	f	\N
3EB022F72AD701058B082E	Áudio	1	t			33	2026-09-15 13:39:52.207524+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3A9403B6077DA3257CB2	Qua vaulor di plamos	3	t			30	2026-09-14 22:53:27.091843+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"Qua vaulor di plamos","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"hVLJM3Mbxi9gKNtOUuQoXfzD973kROGgDebckF05blM="},"push_name":"Victor"}	\N	\N	f	\N
3A722E6851CD532FFD52	E balor d planos	3	t			30	2026-09-14 22:54:41.281993+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"E balor d planos","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"AgUHASJOI0IAcrJsC1PErwICVURoufcRQkIqcNLZCRM="},"push_name":"Victor"}	\N	\N	f	\N
3EB0317FE106D9AD12FFD0	NEYMAR TITULAR NO CLÁSSICO CONTRA O CORINTHIANS! 🐋✋🤪🤚\n\nO CRAQUE DO PEIXE VAI COMEÇAR JOGANDO CONTRA O TIMÃO!	3	t	image	company1/d2a2f310544ece9fddaeb429-wm_media.jpeg	16	2026-08-30 18:21:09.852285+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/d2a2f310544ece9fddaeb429-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"NEYMAR TITULAR NO CLÁSSICO CONTRA O CORINTHIANS! 🐋✋🤪🤚\\n\\nO CRAQUE DO PEIXE VAI COMEÇAR JOGANDO CONTRA O TIMÃO!","directPath":"/m1/v/t24/An-fIQxjGwstlQPvjEcCDcbEhDn5qH2PoWtt2S4Ys7EEGHdiJF8m44EFbts0jwCm-69jh9FZ39Jkn5iYPK1AUIHMu6TBNj7eWNXs34Mk_AmC3AXhHoZIANwwIfLo0EfNig?ccb=10-5\\u0026oh=01_Q5Aa5QHIqP2pNOdaw6nNK-0WA8XV8LSPjAtRnnX4KkQ6Rqjfrg\\u0026oe=6ABBE1E8\\u0026_nc_sid=5e03e0","fileLength":458326,"fileSHA256":"SZv8X5SggILutGMqIFGs0noE/QMMzamq8qNk5e6nBao=","height":1349,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An93V7pZ2fCYyfFUS_kEUvTKgjGrCKgE5z2KQDyB_efjhowrjzeBrlg41i_y8vZPOHQjDKZQHc2c7kC5UpILVIF2d8WhUk3JftCzH8mQbW1H-WijspXNgSU_u18Q5RFDfghwgg9krpvMQH89aUPqWpqIdw?ccb=10-5\\u0026oh=01_Q5Aa5QF6XwkXKe1iS1LgzYoiWj8C3o2a0Dw5kMlbdHH6jU4xzA\\u0026oe=6ABBEBDA\\u0026_nc_sid=5e03e0","thumbnailSHA256":"/smaoHJbqjrKftr3+r7dzDlEDcQNe1GCMT7focg2nVM=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"7k4O/MJMpvGE4Z1ajJ3d9/7/V6ycvSuTDYE1pXZwbb8="}}	\N	\N	f	\N
3EB0D5D00F76F8FB0B8342	Aqui estão os planos disponíveis:\n\n1. **Fibra - 200 MEGA**\n   - **Valor:** R$ 59,99\n\n2. **Fibra - 400 MEGA**\n   - **Valor:** R$ 79,99\n\n3. **Fibra - 800 MEGA**\n   - **Valor:** R$ 99,99\n\n4. **Fibra - RURAL 20 MEGA**\n   - **Valor:** R$ 99,99\n\nSe precisar de mais informações ou quiser realizar uma contratação, é só avisar.	1	t			30	2026-09-14 22:53:36.909664+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3EB0084B4E3F17D8F6E509	CHEGOU A HORA DO BRASILEIRÃO NA CAZÉTV! 🔥🇧🇷\n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\nCompartilha com seus amigos e vem acompanhar com a gente! 👊\n\n🔗 https://bit.ly/46t2Rci	3	t	url		16	2026-08-29 23:21:23.823032+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Vasco da Gama x Cruzeiro AO VIVO E COM IMAGENS pela 25ª rodada do B...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/46t2Rci","previewType":0,"text":"CHEGOU A HORA DO BRASILEIRÃO NA CAZÉTV! 🔥🇧🇷\\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\nCompartilha com seus amigos e vem acompanhar com a gente! 👊\\n\\n🔗 https://bit.ly/46t2Rci","thumbnailDirectPath":"/m1/v/t24/An9iWedmXJ8ianxSB1J9e4P2acbOMJinUEha03wQkQ_9AnRyLl9MeyLs83xze3cmZCYcoSddyR4-zxZ5yRVHshiQ8yff51o-MZHsVmeytJvKW3QT1IXpjQsGFeSaq88YKr_ffNiEQBKQd2I0tLMJnCEkdQ?ccb=10-5\\u0026oh=01_Q5Aa5QGw4Y0iTs_xDFLKplq64iZaWw-JaeFuGFftj8IX1Sr1Xg\\u0026oe=6ABABC30\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"pA+609+O1zyPjQO/ThiU59khnL1+jAImdM0m7//jYhY=","thumbnailWidth":1280,"title":"AO VIVO: VASCO X CRUZEIRO | BRASILEIRÃO 2026 | 25ª RODADA"},"messageContextInfo":{"messageSecret":"WeoBT6/WZmVoxEMoctt3M4xDkxynbZQJfm71LcVk/z4="}}	\N	\N	f	\N
AC39C171F9B709746CC18D865DB1F49E	Estamos nessa etapa	3	t			33	2026-09-15 14:06:24.955874+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Estamos nessa etapa","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"o9Cxawv8jl9zA1a2v4KVD2mT9snnysjzGs/mztuLIDA="},"push_name":"Rogério M."}	\N	\N	f	\N
AC84565CB102646396216518AC682BF4	VAI EMPATAR? 👀 \n\nSevilla diminuiu o placar e entra no jogo!\n\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \n\n🔗 https://bit.ly/4qFwhgF	3	t	gif	company1/5b05c5cad8501d44f068d2ce-wm_media.mp4	16	2026-08-29 23:21:09.775559+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/5b05c5cad8501d44f068d2ce-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAQIEAwUBAQEBAQAAAAAAAAAAAAAAAAABAgP/2gAMAwEAAhADEAAAAPPvp0zvEb0mJ+jykwHoNMhqIchjnakloSyYhLIBrrz0Q1CBRSQWSR//xAAoEAABAwMDAwMFAAAAAAAAAAABAAIRAxIhEDFxEyBBBCJRFDAyQmH/2gAIAQEAAT8ApU6Vri/fwE4UcWtwRlMxcA1ClJ5XSxBQYIi7gIUckBdN3gZU3C17fcBurKtwEDlfTPAy4I+n9sueAEKVOPyMrpUALd1a1pMNUA7gDhHdOaHmSnEuH9+VbtkqfGkqVhSOyVeVONI1JJAHcHkNLfnQghP/AF4+z//EABwRAAICAgMAAAAAAAAAAAAAAAABAhIRIBMxQf/aAAgBAgEBPwCyRksWXrOSJeRlvt6PX//EABwRAAEEAwEAAAAAAAAAAAAAAAABAhJREBEhMP/aAAgBAwEBPwA22ySE0om2lz3w/9k=","caption":"VAI EMPATAR? 👀 \\n\\nSevilla diminuiu o placar e entra no jogo!\\n\\nESTAMOS AO VIVO PARA SEVILLA X ATLÉTICO DE MADRID!  \\n\\n🔗 https://bit.ly/4qFwhgF","directPath":"/m1/v/t24/An9J1xJrA1caPaL3m1Up7SMGunHRM74FOw-WVoiOkYpmaVcyyz5mAMuKqzN6rY7eo4D5jWNht5pQ1fp505qcdcez4YJVVjWjf-yV2Cug-STkV-ryilmnAMb9csb9jDEfJw?ccb=10-5\\u0026oh=01_Q5Aa5QFouZSqw3y8qBIHhIqx7RSmHtnVBqiYSCkXqWyUT7C_VA\\u0026oe=6ABAC3EE\\u0026_nc_sid=5e03e0","fileLength":509362,"fileSHA256":"7K6YKFyh0oRSH/9UmaFg6uL+Rb/QPsNqlYVmGe3jyYM=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3EB06A4A02A9CC6CC72E93	instalo	3	t			33	2026-09-15 00:20:15.536416+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"instalo"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"WeeceqWc6N6YIlbc6089mSR6PpFUll9B32eJC9gdMZg="}}	\N	\N	f	\N
3EB0F7B70889741CCDBBAC	e essa pérola do Renato Gaúcho??? 😅🤣	3	t	image	company1/7d3b59b57e5be666b6b4391b-wm_media.jpeg	16	2026-09-14 23:52:15.277345+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/7d3b59b57e5be666b6b4391b-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"e essa pérola do Renato Gaúcho??? 😅🤣","directPath":"/m1/v/t24/An_JBmNgWNE-zzo2cNNd7ohckrxksijlgIlG9HY6GwxeY9OISO6g098l5KyAPfu6Lo7KVxzNpjzfGp7fFpM8wewXQQpTOTl6kXPcfFZWYvOZNdedw4FHZXxpo40f9eul2w?ccb=10-5\\u0026oh=01_Q5Aa5gF63e8P-Lhw360WNsjvdVG96jfORIEuDwEclyfVcBg84A\\u0026oe=6AD0059E\\u0026_nc_sid=5e03e0","fileLength":433375,"fileSHA256":"GS022qbmycNPRSMfycaMHFWKdTU1t7dxVmekbVoy7LU=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-y6qJ0hLfuvpSj_SbiQnOny0abGwRk44pPjMos02Zku_lovIW6N_KwJ3HhFakGENevvi-qp-Rcr7415kvYdvMNCgtyfi4XYlw-wtlsieqq9VMSPJGkfnAGrWc62v3vx5cFY2TvZkVvN6YjbSvM29ZUTw?ccb=10-5\\u0026oh=01_Q5Aa5gFnLyUjm6tTlcY6ShEAJemzaD60Rw-0VGPAq3fTNKp7kw\\u0026oe=6ACFDEC9\\u0026_nc_sid=5e03e0","thumbnailSHA256":"QnUTcOnnBZD4KrRCA91ptI2wFAD5BK2j7/N4xguESM8=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"gwL4fGmxiyIRF07vsDAK5da/D6ZkQehZLwPRicTHni4="}}	\N	\N	f	\N
3EB0E039AB21E9D63FA53C	👀🤔 Bidu na seleção?	3	t	image	company1/e292367e7b25da89f9ab9605-wm_media.jpeg	16	2026-09-15 00:01:29.36246+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/e292367e7b25da89f9ab9605-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"👀🤔 Bidu na seleção?","directPath":"/m1/v/t24/An-IFuDW_5s19GKvr_nneJgOcP-wIqsT4SyGD0rcVDXxEWwW6ufg4alFMlGXLDW87j4Cjp0waIKkovv3YbOmKRLMtlluDCdfaKphUkS_gbSRpmId3lB2RD9-35DyGxJTKw?ccb=10-5\\u0026oh=01_Q5Aa5gGgFVKY2fflYCveKPYY-YWP6j2QZ4SRg9FBwuhfeFb0iA\\u0026oe=6ACFF270\\u0026_nc_sid=5e03e0","fileLength":312211,"fileSHA256":"0eT0XaN/9Tm7kA4e44mrOdCa5M+GJPVfV3fhBBn/g+U=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_xFL4OmL2E20G4dhrl-1PaCkLHjatU0-7CdgMKWhVzu9ongzF9Hean4dXOKvRqgXkDKn82VOVeepc8w-2he3pGJLRYDTmt-EUYc0MeuOsJZtw6kF4YdZp_T6z9wM0OhHofSIOa6sl4C-j2nP5-hobfuA?ccb=10-5\\u0026oh=01_Q5Aa5gGNC8PQHadIqwI40pbXVYhhpEwnIxPVjSiEVg6m9bdHwg\\u0026oe=6ACFF0D1\\u0026_nc_sid=5e03e0","thumbnailSHA256":"ixbdBU+VpanCUtwVUBJEWcYxSWq+7bmBJPyDMw1v4Q8=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"xHgvhEduDcheb3PWt32g9f+vRAbphR0gcfd2XCd2QAM="}}	\N	\N	f	\N
3EB0E50A0A19F8A1D417F5		3	t			16	2026-08-30 18:43:10.310498+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"QHT3ba+d/hwmTxNuiR96+InFnWnbvjM8ElimOC7zF+4="},"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"Qual vai ser o placar entre Corinthians x Santos? Manda aí! 👇"}}}}	\N	\N	f	\N
3A13A47FC8D30FD73E64	v-lor d internet cantosque ta	3	t			30	2026-09-14 22:54:07.458096+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"v-lor d internet cantosque ta","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"mhKkBzuBiMBcFQY0WgMz13emQPW6AxnBKZxjtylIigI="},"push_name":"Victor"}	\N	\N	f	\N
3EB080BCCD19E910DF0E4B	Para registrar seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA**, preciso das seguintes informações:\n\n- Nome completo\n- CPF\n- Endereço completo (com número e bairro)\n- Telefone/WhatsApp para contato\n\nAssim que eu tiver esses dados, farei o registro e a equipe técnica entrará em contato para agendar a instalação.	1	t			30	2026-09-14 22:55:22.966201+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
AC65C4334EE1FD829F46548B4116CA8D	Agora tô na rua	3	t	image	company1/6a7d5cd1b50c26e806c016e9-wm_media.jpeg	33	2026-09-15 14:06:54.992684+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/6a7d5cd1b50c26e806c016e9-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIADwAIQMBIgACEQEDEQH/xAAtAAABBQEAAAAAAAAAAAAAAAAAAQIDBAUGAQEBAAAAAAAAAAAAAAAAAAAAAf/aAAwDAQACEAMQAAAAsZfTQRy1voMurJAVPNhbMNz70IpeK57Sx7cXGVYTTM0KUjH0KiI4aH//xAAlEAACAgIBAgYDAAAAAAAAAAABAgADBBEhEhMFFCAxQUIiU2H/2gAIAQEAAT8Afw6r6sZfi3VNHDg6dJQpVuoDjUBOh+Bhl6h6GI+JXXXdUjOATqWBUZx9YEv+LpRkNaASeCIHU1NzqY1yCkoxO5bcAQAN7aA5X6ph2nSqJusgCWqj8humJUoPJ3BcAPaYHs8DRjsQMRO4Zj29tSNQZf8ABGymnfaeYaAwehfT/8QAGBEAAwEBAAAAAAAAAAAAAAAAARARACD/2gAIAQIBAT8ApUQ1Pf8A/8QAFREBAQAAAAAAAAAAAAAAAAAAETD/2gAIAQMBAT8AKf/Z","URL":"https://mmg.whatsapp.net/v/t62.7118-24/689840563_956794260798723_5435279401905996900_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gE-g_iIp79wDc1Le03JijsQxpXoY_9LHTdYHzjIwAjw6Q\\u0026oe=6AD0BE02\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"Agora tô na rua","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"C/Zv+Z5CFy50/COF3E+92+9E/SqzBn+fGvy8JHp4uLc=","mediaKeyDomain":1},"pairedMediaType":0,"statusSourceType":0},"directPath":"/v/t62.7118-24/689840563_956794260798723_5435279401905996900_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gE-g_iIp79wDc1Le03JijsQxpXoY_9LHTdYHzjIwAjw6Q\\u0026oe=6AD0BE02\\u0026_nc_sid=5e03e0","fileEncSHA256":"YsUo8VlxB+L58pY5Ds5+vbniCgupI4jyXO/vq85Yr6c=","fileLength":184990,"fileSHA256":"t6qyxgezKVzqf0fMyq9pGEHSNfqvwy6jyMngtt6Dkr8=","height":1599,"mediaKey":"C/Zv+Z5CFy50/COF3E+92+9E/SqzBn+fGvy8JHp4uLc=","mediaKeyTimestamp":1789481209,"midQualityFileSHA256":"q8lsNcioRT3VsfzhcTmVEG2V+Qu05LAm/8wA9ZYKTm0=","mimetype":"image/jpeg","scanLengths":[13214,45391,40592,85793],"scansSidecar":"SojymUT9/6nqzJ+kk0mwy/JoX1DLpg0E0b1RWeYhZ00o8EqluTV2qA==","width":899},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"ZII7Z58km/TpZTM41TBVya3kCTbwmx6jNBGj/ksRxnU="},"push_name":"Rogério M."}	\N	\N	f	\N
2A9EC99D2F53203CE6B0	sai tranquilo, relaxa	3	t			33	2026-09-15 13:37:39.847657+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0},"text":"sai tranquilo, relaxa"},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"Cquj+YiaSqW7IYNRWH9+rOmvAxaLHTZtYfI9jrWnLkI="}}	\N	\N	f	\N
3EB0D636FE94B778968F15		3	t			16	2026-09-14 23:52:41.503583+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"GgE6Ne/C00runhnScMwdjWpVTyIq+yK7SvxqTlC32B4="},"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"o homem vai salvar o final de ano do Grêmio?"}}}}	\N	\N	f	\N
3EB0AF58F0560E664D08EA		3	t			16	2026-08-30 18:46:57.205714+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"jY2pwmmQIJr/KPBr9wzg/GOxU9mG7qLW1iii4q7Xx6s="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"Qual vai ser o placar entre Corinthians x Santos? Manda aí! 👇"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"AC76DF6D50655B3303C6A13139F6590D","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"Corinthians 2 santos 0"}},"serverQuestionID":36404}},"inviteLinkGroupTypeV2":0,"text":"2 gols do Depay?"}}}}	\N	\N	f	\N
3EB0C2B147D8532ADCE896	Atualmente, você estava no plano de **400 MEGA**, mas ele está **cancelado**. O valor total das faturas em aberto é de **R$ 199,98**.\n\nSe desejar reativar o plano ou mudar para outra opção, estou à disposição para ajudar.	1	t			30	2026-09-14 22:54:12.709117+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
AC256D7D9F18B39A9DF1CE233CE8F852	Estamos montando peças ainda	3	t			33	2026-09-15 14:06:29.531747+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Estamos montando peças ainda","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"QgP3YK8kYq3wuyBEeuwbMcG3fVwSWn0s2p0/4DPIYHo="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB003DCFD9FB56B50232D	O HOMEM TÁ SORRIDENTE! 💰👀\n\nPróximo de fechar o negócio pela SAF do Vasco, o empresário Marcos Lamacchia está presente em São Januário e cumprimentou os torcedores no Caldeirão.\n\n🚨 JÁ ESTAMOS AO VIVO COM O PRÉ-JOGO DE VASCO X CRUZEIRO! VEM PRA TELA DA CAZÉTV! 🔥 \n\n🔗 https://bit.ly/46t2Rci	3	t	image	company1/112c90f57e2f63e361230536-wm_media.jpeg	16	2026-08-29 23:47:10.852616+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/112c90f57e2f63e361230536-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O HOMEM TÁ SORRIDENTE! 💰👀\\n\\nPróximo de fechar o negócio pela SAF do Vasco, o empresário Marcos Lamacchia está presente em São Januário e cumprimentou os torcedores no Caldeirão.\\n\\n🚨 JÁ ESTAMOS AO VIVO COM O PRÉ-JOGO DE VASCO X CRUZEIRO! VEM PRA TELA DA CAZÉTV! 🔥 \\n\\n🔗 https://bit.ly/46t2Rci","directPath":"/m1/v/t24/An_vlWUSnDUtnLZHQsTsQhLo0azROH7Smc5RC3IAEhSUWfWB5p_hNA7bk2Iatv1wBYvE9Ifi8TCaWjdlEDCdCMiltTuqsnxEYiyhG9i1hRdQoG9DZ6I0YGOEauCA5ev1mA?ccb=10-5\\u0026oh=01_Q5Aa5QEcK_h1G6eBlUY2NPfcekj3FIzufD6970B49xzBVhY6gw\\u0026oe=6ABAF4DD\\u0026_nc_sid=5e03e0","fileLength":293387,"fileSHA256":"f7je/ka8BhDmAMG+HykhVgArjvFXXyGcIO7tCVty+24=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An9YfgSjN12fJ5lizVNQWsVp2O6zTcia6IKfkxKniA2--AKe6JZt9QGg8AIgq-YiHtYehD7WUhKukufPSMlZaven71cqXAICNFo4oBmiWD9DO66cg9DgrLCI8-BIjq0eXmY_AZQ8OXE0gNh9aURRO_ETpw?ccb=10-5\\u0026oh=01_Q5Aa5QGj1YiCcH-KOLV7fahVneyBvsWb4bENPQTGghaosUHsfg\\u0026oe=6ABAE236\\u0026_nc_sid=5e03e0","thumbnailSHA256":"YBeE2sAbEJhMjadBZJaCYI1HHn0vM7kLyx5DoqSfQts=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"x886wTj/MtBFE6QYQwMvUaaKWMRaIkE0irxlbXgA0gE="}}	\N	\N	f	\N
3EB0E4E3294B8B1E1DF142		3	t			16	2026-09-14 23:55:20.475464+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"/p9sT81MojodOLIyYpMO0J95nuUW9+ui1CZbG4FH1Pc="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"o homem vai salvar o final de ano do Grêmio?"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"AC7A14AE1E0A5A18C2342C717C8F9C96","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"Claro que vai, vai salvar do rebaixamento e ganhar a CDB "}},"serverQuestionID":37173}},"inviteLinkGroupTypeV2":0,"text":"essa é a mentalidade"}}}}	\N	\N	f	\N
3EB0B2AEF544079A87D1A8		3	t			16	2026-08-30 18:47:29.07636+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"beI8Il1x2N1A1Eu4OPeD2fgvCAzKHx6qO0BdNb190zA="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"Qual vai ser o placar entre Corinthians x Santos? Manda aí! 👇"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"AC3B643F041F2B626AE81F69587C3B8A","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"3 - 2 SANTOS \\nCom 3 gols do NEYMAR"}},"serverQuestionID":36404}},"inviteLinkGroupTypeV2":0,"text":"hat trick do homem??"}}}}	\N	\N	f	\N
ACD5A08D865F1AE5031394ECE67640B6	?	3	t			33	2026-09-15 13:40:49.713665+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"?","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"5rE3fqg8WDEx2M8TXLol43epU5aX5wfRrj+AgrcD6UA="},"push_name":"Rogério M."}	\N	\N	f	\N
AC805840252B507E456C1B50DCFFD7D5	m	3	t			33	2026-09-15 13:40:48.448312+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"m","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"Jp3LOfgWw/90sjJyNpQNnWcCvI+HM8i36RNZTfM18tc="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB081D7644A9F9081127A	Os valores dos planos disponíveis são:\n\n1. **Fibra - 200 MEGA**: R$ 59,99\n2. **Fibra - 400 MEGA**: R$ 79,99\n3. **Fibra - 800 MEGA**: R$ 99,99\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\n\nSe precisar de mais detalhes ou quiser contratar um plano, é só me avisar.	1	t			30	2026-09-14 22:54:47.002158+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3A2AC154ED0C6C906F69	So tem esses ?	3	t			30	2026-09-14 22:55:04.622553+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"So tem esses ?","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"4JoL30OJlftjPDmsUyrB0DCAx3Sk3VPq5gIdHhhXd34="},"push_name":"Victor"}	\N	\N	f	\N
3ABB42C3AD84269B600F	Quero o 4	3	t			30	2026-09-14 22:55:18.303607+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"Quero o 4","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"BTzrObocPxPihVzfg5OFV+/SLrkombj+H9uPzZOlDYU="},"push_name":"Victor"}	\N	\N	f	\N
3A784BAFF3C55AD414C9	Victor Gabriel Duarte \n03697523090\nRua Bahia 123 centro \n51993032200	3	t			30	2026-09-14 22:55:44.530026+00	2026-09-14 22:55:45.842919+00	f	f	2	\N	1		{"conversation":"Victor Gabriel Duarte \\n03697523090\\nRua Bahia 123 centro \\n51993032200","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderTimestamp":1789421910},"deviceListMetadataVersion":2,"messageSecret":"a8L/pQt+Nxqn55db7kFkaLYCfRJMEenNq/DREcuz84c="},"push_name":"Victor"}	\N	\N	f	\N
ACEEF8C92819AB2C8C0F6BA4C5BA108C	MAIS UM GOL CONTRA! O A CORUÑA MARCA O TERCEIRO! \n\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\n\n▶️ https://bit.ly/4qJQYYZ	3	t	gif	company1/2d3ceea119c75608dd4cd35d-wm_media.mp4	16	2026-08-30 19:03:47.117847+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/2d3ceea119c75608dd4cd35d-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAEBAQEBAAAAAAAAAAAAAAAAAQIEAwEBAQEBAAAAAAAAAAAAAAAAAQACBP/aAAwDAQACEAMQAAAAw5vTYz3ZDj8uiJ43qzujBfaanACVRFiTploDCaw1QVuVVFf/xAAiEAEAAgICAQQDAAAAAAAAAAABAAIDERIhIBATMDEyQVH/2gAIAQEAAT8A6S27aUnOgAfYds13+417FJbjWc9rAtucax9tpU49xx5bGthMeO1aou5jzmMBoTJmtkToAl6c5TEVf7GvL8QLQx7N20MODcOx3NM78XTO5t1rR4j4b+AiQ9Kffn//xAAeEQABAwQDAAAAAAAAAAAAAAACAAEDERIgQhNSYf/aAAgBAgEBPwC8OyeQVyx+oSAtlTFpCbbL/8QAGREAAwEBAQAAAAAAAAAAAAAAAAESETBh/9oACAEDAQE/AKbNNZXhXP8A/9k=","URL":"https://mmg.whatsapp.net/m1/v/t24/An94hKrN-etoW8bECsyHueKv7dbjQ6C5qOt9q4k5MnFvTCdtK_N4FZIgAidY4jy_Y5yl7neztUiASWj4DvKRa56ntHtJbny8wYFJAyrvIPE6LeXFix7UPWg8OPnQ_NvbDQ?ccb=10-5\\u0026oh=01_Q5Aa5QFmnVXU4B7tgMFOyRoh5MasMtpZ1zWxy3sn-SWZ5NTN9g\\u0026oe=6ABBF051\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"MAIS UM GOL CONTRA! O A CORUÑA MARCA O TERCEIRO! \\n\\n🚨 Estamos ao vivo com LaLiga! Vem ver Deportivo A Coruña x Valencia com a gente!\\n\\n▶️ https://bit.ly/4qJQYYZ","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An94hKrN-etoW8bECsyHueKv7dbjQ6C5qOt9q4k5MnFvTCdtK_N4FZIgAidY4jy_Y5yl7neztUiASWj4DvKRa56ntHtJbny8wYFJAyrvIPE6LeXFix7UPWg8OPnQ_NvbDQ?ccb=10-5\\u0026oh=01_Q5Aa5QFmnVXU4B7tgMFOyRoh5MasMtpZ1zWxy3sn-SWZ5NTN9g\\u0026oe=6ABBF051\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":495078,"fileSHA256":"EmAqkIb7NM0ODydiivlGRpvRSJHspwzVbAbAlf6zbzY=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB04D10D8C37CCD421B31	CRISE? QUE NADA! ❌❌\n\nO SÃO PAULO TÁ ESPANTANDO A ZICA COM O APOIO DA TORCIDA NO MORUMBIS! 🇾🇪	3	t	image	company1/390b42a24d60b1eabe0a346e-wm_media.jpeg	16	2026-08-29 23:58:01.564472+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/390b42a24d60b1eabe0a346e-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"CRISE? QUE NADA! ❌❌\\n\\nO SÃO PAULO TÁ ESPANTANDO A ZICA COM O APOIO DA TORCIDA NO MORUMBIS! 🇾🇪","directPath":"/m1/v/t24/An-rS6Uo8VmBUv6as7YdLF3ghvlzF2qY6Jcvbd1Qwt3rHE987vQOpjYlFkZVKqfsljB-tKR81jeq8NmfD8xlpQRe7FUh2sWKdmaaam7sG8jX1tnpwPicHG9j2AnJW6x1mA?ccb=10-5\\u0026oh=01_Q5Aa5QHg6RyHTVPQ8fux_giUrRP6dea7KRCQu7zCnybM2Gy3-Q\\u0026oe=6ABAE5AD\\u0026_nc_sid=5e03e0","fileLength":210637,"fileSHA256":"x9hXMlJLLdAqiYRdvyy6ji2kyh6YoN06cK52+yKN+1I=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-_7j9cBS53n1ybV8rjG7lRGkDOkBhQSsBS0x6Ysf1Tmm7Lhk62DOuAuQGStdcxkCDJZcIEiZidm-YyutyuC_lrp28ckj8Fj-M1T6qxK9Wwyy16vd0gi1bjWyEREKG6jWwPVMCabdDt9E3LdgoSswLDKw?ccb=10-5\\u0026oh=01_Q5Aa5QH-FV4xumqhi65QHTdWqj6BLJpZvQ3WGhXx3-BIiFtx6g\\u0026oe=6ABAD68D\\u0026_nc_sid=5e03e0","thumbnailSHA256":"DBD6NX6aRSDKod95czDMtu1L3F5f1HNzSpr8kHCX0j8=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"fWkm+KUBE8tBaZ1ur24ODd92YGuJYfxBkwZd81cXbH4="}}	\N	\N	f	\N
3EB0424053011F5CDFDC		3	t			16	2026-08-30 00:01:19.643263+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"TÁ CHEGANDO A HORA! E aí, quem leva? 👀","options":[{"optionName":"O GIGANTE DA COLINA 💢"},{"optionName":"A RAPOSA 🦊"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
3EB0E349455E8DFA9EEEC6	Além dos planos que mencionei anteriormente, existem mais opções disponíveis. Aqui está a lista completa:\n\n1. **Fibra - 200 MEGA**: R$ 59,99\n2. **Fibra - 400 MEGA**: R$ 79,99\n3. **Fibra - 800 MEGA**: R$ 99,99\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\n\nSe precisar de mais informações sobre algum plano específico ou quiser realizar uma contratação, estou à disposição.	1	t			30	2026-09-14 22:55:10.316192+00	2026-09-14 22:55:45.842919+00	t	f	2	\N	1			\N	\N	f	\N
3EB019B1F301C64F8B3886	o trem la	3	t			33	2026-09-15 00:20:17.0034+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"o trem la"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"FO+Huf5By+DqefEf6RKMxF3qhJmzoqpRHWnMIeUZJws="}}	\N	\N	f	\N
3EB0CCBE4486463E78E68A	*Admin*\nsim mano	1	t			33	2026-09-15 14:06:36.869684+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0E069C540F128FB58BD	*Admin*\nisso é oque a gente diz pra eles	1	t			33	2026-09-15 14:06:41.369433+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0DAA9383E4ABEDA98E4	CHAMAAAAAAAAAAAAAAAAAAAA O SAMUUUUUUUUUUUUUUUUUUUUUUUUUUU!!!!!!!!! O FLAMENGO ABRE O PLACAR NO CLÁSSICO CONTRA O BOTAFOGO!!!! ❤️🖤❤️🖤❤️🖤❤️🖤❤️🖤	3	t	image	company1/10a59bc630016c4a69b2580b-wm_media.jpeg	16	2026-08-30 19:16:30.58493+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/10a59bc630016c4a69b2580b-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"CHAMAAAAAAAAAAAAAAAAAAAA O SAMUUUUUUUUUUUUUUUUUUUUUUUUUUU!!!!!!!!! O FLAMENGO ABRE O PLACAR NO CLÁSSICO CONTRA O BOTAFOGO!!!! ❤️🖤❤️🖤❤️🖤❤️🖤❤️🖤","directPath":"/m1/v/t24/An_Oiu-lLzo7QXqOjQ7mRHIB3re9l4qAX8741Sm24cjq9Y2bi75iRG6eTl4gNsQkvel64cBSxBUNVUFrt3jS-SW4ZNx3PXEFQPLatP6XgpPvk-5JcyTSmcbkdWIcJlhIxg?ccb=10-5\\u0026oh=01_Q5Aa5QEzbk080osjvmM6Jz04BM-kKTTtv_eRxukT0wrCWfRX0g\\u0026oe=6ABBF4E5\\u0026_nc_sid=5e03e0","fileLength":597683,"fileSHA256":"M7BhV367w27s0M6bHv/PGsq7yX21o2iMGu14Tiwqj8g=","height":1600,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_LT6CvIveKaI5vAUFHtdWqCJ35N5fGNwSeoH2nksnMk5fnt0aXkPZiR5NPev019L-b76Kg-MKwRGaQ21d3SSY3MAHT87NvBTG8KNNoahkGVjOYydmUl8YZI7QV5OeT8mdqwoITzUIQGEBPLkWanZ1DMw?ccb=10-5\\u0026oh=01_Q5Aa5QG9j3vPMRmyqNdTVFSui9zEs_cxbWJGsuEqsBjujZfcUA\\u0026oe=6ABBE638\\u0026_nc_sid=5e03e0","thumbnailSHA256":"bf6xNv9u1lqbCO/p6/AFSp6F/ZWtfJQfjD8qk9u3wrA=","viewOnce":false,"width":1288},"messageContextInfo":{"messageSecret":"g4sEu+A4jKl1PpNOFbqDpeGZF2H2npcW8ap3+nJvKHo="}}	\N	\N	f	\N
3EB05DC9FEE1B27491C6A7	*Admin*\nmas a gente sabe que não tá mais ai	1	t			33	2026-09-15 14:06:47.741933+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
AC0520AEA69F87192D6488B16446E3A2	MAIS UM GOL DE BOLA AÉREA DO MONACO DO FILIPE LUÍS! 👀 BRUNNER COLOCOU PRA DENTRO! ⚽\n\n🚨Estamos ao vivo com a Ligue 1! MÔNACO X OLYMPIQUE DE MARSELHA! VEM! 🇫🇷	3	t	gif	company1/396eeeda4cdc2834a7b14393-wm_media.mp4	16	2026-08-30 19:17:27.574857+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/396eeeda4cdc2834a7b14393-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAADAQEAAAAAAAAAAAAAAAAAAQIEAwEBAQEBAAAAAAAAAAAAAAAAAAECBP/aAAwDAQACEAMQAAAAeLRWLkNZWQ3c7rHWybcp2F6EnPz3KB0oq1Bb0OZrQSYywQ00MFVEh//EACIQAAICAQQCAwEAAAAAAAAAAAERAAISAxAhMUFREyIwkf/aAAgBAQABPwDX0yvrMDa6IInwkkCh5lhZ9FiGlqlk9iWHCHIlRbv1MiBDqA0WHM+3uFkuLy0Yi+4RXH2Z8QIJXHgCClPaltAgE5Q6FilYbOOFtzMuZRxxDxb+x7OOAMHbLkiOOOPdnYEg/jXvYdT/xAAaEQACAgMAAAAAAAAAAAAAAAAAAQIREiBR/9oACAECAQE/AFJKKXDOJa7tbRm9aP/EABwRAAEEAwEAAAAAAAAAAAAAAAEAAhESICExUf/aAAgBAwEBPwCWjclWamkHi0fFXG5y/9k=","URL":"https://mmg.whatsapp.net/m1/v/t24/An8jltspHm8FSEYQSlGnRLt88WOccFrs5ZhE6lXiKy331lhtVaSpf7-b2fcwYebAkP2zunCVMUPS7REU3ffHWoJn-7FJz614Ahd7iK-0rkUyF_RB28rY6y1w_iZ2LX2D6w?ccb=10-5\\u0026oh=01_Q5Aa5QHVT_5Jn_N8nkWS0OVIXNj7V8iAXMt_RtovXkmG6gKZ2g\\u0026oe=6ABC090E\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"MAIS UM GOL DE BOLA AÉREA DO MONACO DO FILIPE LUÍS! 👀 BRUNNER COLOCOU PRA DENTRO! ⚽\\n\\n🚨Estamos ao vivo com a Ligue 1! MÔNACO X OLYMPIQUE DE MARSELHA! VEM! 🇫🇷","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An8jltspHm8FSEYQSlGnRLt88WOccFrs5ZhE6lXiKy331lhtVaSpf7-b2fcwYebAkP2zunCVMUPS7REU3ffHWoJn-7FJz614Ahd7iK-0rkUyF_RB28rY6y1w_iZ2LX2D6w?ccb=10-5\\u0026oh=01_Q5Aa5QHVT_5Jn_N8nkWS0OVIXNj7V8iAXMt_RtovXkmG6gKZ2g\\u0026oe=6ABC090E\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":531901,"fileSHA256":"ktFvChfE0U+7CScihYlnxYcsxZiqD7YpRGauXfTnKdg=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB07E58FDA3518A3CB915	DOMINGÃO CHEIO, HEIN? VEM QUE TEM MAIS LALIGA! 🔥🇪🇸\n\nEstamos AO VIVO para Celta de Vigo x Athletic Bilbao! \n\n🔗 https://bit.ly/3UhbGn1	3	t	url		16	2026-08-30 19:30:42.127221+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Celta x Athletic Bilbao AO VIVO E COM IMAGENS pela 3ª Rodada da LaL...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/3UhbGn1","previewType":0,"text":"DOMINGÃO CHEIO, HEIN? VEM QUE TEM MAIS LALIGA! 🔥🇪🇸\\n\\nEstamos AO VIVO para Celta de Vigo x Athletic Bilbao! \\n\\n🔗 https://bit.ly/3UhbGn1","thumbnailDirectPath":"/m1/v/t24/An9rbBOlr2kr3QZ-C-Pj0Ps1awToU2eyvHzlF_3HcXOmUReLTxmk6mKJ_4my-C_npmMMLAGsE-EB55e1kUmSbWFCF_9hOpWWX2CrUn-FeKsRakLZvxg-_Jl9rNL1J2RIErqHxbiqlhdK6dTQhff8i9uN5g?ccb=10-5\\u0026oh=01_Q5Aa5QFvwhUbNwucm3c62h4cbTtE4pnGd4agxhiwsntbStnPqw\\u0026oe=6ABBFF36\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"jKKNbrc00Pkr1sqV1SbGVTA+i0MAEZF/DdNutis+tGA=","thumbnailWidth":1280,"title":"AO VIVO: CELTA X ATHLETIC BILBAO | LALIGA 26/27 | 3ª RODADA"},"messageContextInfo":{"messageSecret":"v5StSGSWs7iBw1hPE3F60w1RIfZNE/nWrzYjTHRFl5E="}}	\N	\N	f	\N
3EB0444D32468620676741	O NEYMAR É UMA P*CAAAAAA, SENHORAS E SENHORES!!!\n\nELE CALOU A NEO QUÍMICA ARENA, PQPPP 🥵🥵🥵\n\nSANTOS 1 A 0!	3	t	image	company1/59ef97dc1108f74a12482782-wm_media.jpeg	16	2026-08-30 19:39:36.903858+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/59ef97dc1108f74a12482782-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O NEYMAR É UMA P*CAAAAAA, SENHORAS E SENHORES!!!\\n\\nELE CALOU A NEO QUÍMICA ARENA, PQPPP 🥵🥵🥵\\n\\nSANTOS 1 A 0!","directPath":"/m1/v/t24/An83zMCsxkhuitPbL4Scd0gyTm18B4WZCsHJP8fFkc9dJuKpw8clfjX-_Qenh51-UFjTRWo0Fmd4pRaC1xXbaU-5Pjr3kMozDuzz1AUQr2rvtaFZcyvEFDKELUitDiYs6g?ccb=10-5\\u0026oh=01_Q5Aa5QEh86gTqINyzGr0_GFIy4YS_WwBv2vzBAC6P9GvSeHhyQ\\u0026oe=6ABBFF74\\u0026_nc_sid=5e03e0","fileLength":422425,"fileSHA256":"fqSpP5GfSXQWds84VTSB6LMEY5LjNxOHPOJAeYlNivc=","height":1402,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-eaUvrpPdjksuHhJvkyrAlTQfbbNqgAPFJb6-S1wZnZKukoAPbzkQ0C4enJcOgc90xE_O-D_nPeU-oMG527kmUkhfnwBJVTZStJ68bKC5eYHo3hjdBd0LRNj_V83gq736sU7r0v8lcxKrXd2LfM1wzzw?ccb=10-5\\u0026oh=01_Q5Aa5QEaxK0ErTaNeS0_fF0LYEB30sm8lEy4ovTjADaYmSh96A\\u0026oe=6ABC0390\\u0026_nc_sid=5e03e0","thumbnailSHA256":"NeCzhyE2x/+Vz1Ih9x2aMkFFCzgEwq1wTtnQ+lSSB8k=","viewOnce":false,"width":1122},"messageContextInfo":{"messageSecret":"5aFGzX2Fz5ZIOGsNqn0Ji/xHB/Idhj52yfyv3XwjGqA="}}	\N	\N	f	\N
3EB0A19E3CD19CF392473D	Imagem	3	t	image	company1/0af3d54a3fb4322785e856ad-wm_media.jpeg	16	2026-09-15 14:09:47.793438+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0af3d54a3fb4322785e856ad-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCABkAFADASIAAhEBAxEB/8QAHQAAAQQDAQEAAAAAAAAAAAAABwAGCAkDBAUBAv/EADsQAAEEAQMDAwEFBgILAAAAAAIBAwQFBgcREgATIQgUMSIVFkFRYSMkMnGBkWPRCRczQkNEUpKx4fD/xAAaAQACAwEBAAAAAAAAAAAAAAACAwABBAYF/8QALxEAAQQBAgQEBQQDAAAAAAAAAQACAxEEBSESEzFBUWGR8AZxgcHRIqGx4SMy8f/aAAwDAQACEQMRAD8Arqn47aZFmH2JTxu7LkoiNNquyKXDdEVV8Dv4Tkuwpvuqom6o/Q9LOr8bBZWpJUleeOQ3pTB2BWkdph84/eVwYrjpgE4kGNIVQiq8QoyfJBVNlaEnJ7nDs6TIaE4YzGGCbRJcFiYwYOsE24BsPgbTgkBkioYqnn4+OsTWeZTYVkiilTmPs6VKlTFiNw2GmWnpBRidJkABBYRfZRU2bQUQWkAUQVVFrHLuAX0of39u6vJ4ea4DrZXKGOCEm6J058W09yzNElJi2NTLP2TByH1Ya3EGx+VVfjf9PnpuugoH4XdF6m3opPlaX6Y4kOOjWvvZQ1JnWAShU5cvZtSFiGCEgqSLshKSomyKvj56mZmOxYgWC3HpfqgxsUZEhDtgFCSTXmzKWPIYVpwC4kBiokK/kqL8ddlmIvtSRtvlwHkWyfCfG/8AdUT+vRM9S2OQafP4Fo3JRHL2tj2EpteK9p0t0IkQFLYV23RN1+F64mF4frBqMpwtOsRmvVRNKQAPaAOK7Arhm5tyJUVfqTynJeCIPjo25zBG2U7X4om4D5JHRNBNeAtMJ1omJBNugoGK8SEh4qi/kvTsxXT0Mw/ebG4j1Fdy4e4dbUiMvjYBT+L9fPWrmNbneCzZNBnWPyWmo7yiQusp2xLyPNtU22RVTwoqiEiDumxdSH9KeBUGXVTNlnmL2NtTxHjBpuCSoqIKfUZIipv5X43/AA6Yc1jouYm4mkyS5PIIINE7g9vfqgdf6IsQK9bPF8jbtm29xd5sdpOQ/KCu679DUmkFVFRQePhUVPKL1ZVqroHhA1EtjSLHbyG6wIi3MedJYym4KbCgqq7puqb7/j1AbI9OclqrafCnsD7iK8YPI2SKKEi+ekQZ8bwQ40Vs1TQpsTheG7H57Edt/VNjOGu1krraou/bb3/7U634OD2EKjrspvzKvrrhJK1n0i5ImdpCHugypCqR++PZV5dhUheRvukw6A9HIMdcv9R4NYbFocZ1pH5p1sH3kliGy2rkl8GeYIfaZbddVCMB4gqkYIikm7U0szOswhUdJCiwpF7YMwYMVHHVYjq64jbTQkauOdsOQiikplxRN1Jfn09PwxI0vlNNaN142VKTKWs3JOy1rymsHcbG6rNPJ8anYmvm1bmEhwngcUBbjuPrtHNW+2WyttASkbnLdOCAV9EvU/Q4nEi45e6Z1kzG4EVth1YZupMakk4iOzlSS46244TZOIrLasASoCoraIaFJ3M9Q7rQXHLLArnEIrUKe9GqMRjwG0ZGQPBVkuyFMi4NgigibIpKpEiqf8SQys6grmdkeX1MOPXxJEQpEraKqCfccFRBUVOAOKptl8qqc9v4t0HwoM8anLyZYhyydq/Oxvz8V0WZo40yHnRynjA3sexXl4Jvai5A1k2c29vEfR2IUkwhECEIJHFdm+CEiKIqiIuyoi/V5RF36k9pDj2S6b49QZuxq/W0VDXzmq21iPygTuNg6AGgifEEBUTl3VTluaeURBAwZotkWG0t1MqNQaCqsaSyZFwjmMIrkd9jdwFbcBlx5FcHuMo2JNtkbrROkgtIQkDG7UqvbIMkOZAxeZaOyK22kPzWYxdtdijOnHIS27ZM7KhKoKIp45juXxBhSYzmxMsMHfrYO3qEfwvlQSPe6XdzvMiq338j9l2s+wuz1Bx8LfINVabJIl5YRG0KPLUDEVVwjVeRq0yCE2YgoAm6CqGpmC7Ov0uXuWafVFlUY4069DlMKb5dlTFlD4opKv8Auj+v4Lv0yEg/6w7CSziEl+0oYPv7q2smZclY7bQMLyBH5JkYMgPJTJSRCJ7bYlVNyx6bp+rOJ5wdbp3i1fduWcNY0mFO8MI0Joqruqp8Iu2/n5+F+Ok6Vpz8mNxkkpt1Xe68Fu1bVI8DKY/HZZA3N2CCeln6/VHXJbbM7ik+7umkt6c/ZRxLtOEDig42O6kSp4RPp/Rf59RbrtEsrlhJtbRtuU9Jd7j3LwSkS7kvn9V6nJk8bVLR7HTy3DtOMRahe3dmX0eNMcN8E4Kqi0RAKIIr5/kmyCnz1BvEcw1bwee2JuOWzDhq8UWX9QlyVSVRX5T5/wDXWx2iuc2xI0P327HyXn5/xA3UJQAx3LHrfcn+Pe0eb6G3JyaJbRL9qoD7LkcpJm4CGhRXkWPu2ilu8n7BEVOKq6iEqCpEnb9PmTUuH6x4zkN5skWHIcJF234uk0YtLtt+DhAv9OmPCmuW2Q/dGApSDsI7bdYQApk5IFV4CKbbqSkm223leurh3aoctprya5LYapLWElmEqGTLkOW2aE8y6O5IGxNPoKqvIhb3URXkA9JDIyfA5Q6vaRQ63VH7Lk4WSjUXdP0ODrJocN33rz26qRvqG1YxKNq/il9OnlMjY/GdCUUl/ue8J1pUJ1pnkiCriGKIJIIgQqW6p/ECcvzq1m4XjtPKmQI6S3Z1nZpHJe5IWS40bSOggrxQUZDiilyVEFeAjxI3FqLpHRZTl8y2q2jgVsVvw2Dil3HkFE4iO+zaeFXim2ycU26CeSXseZOjNwWUZbjRo7BbO8xMm2hbUhXZPC8VVfw3VURSREVeO0Xktk5gu2gV872/K7bX8id8PAaon9qon+AtgrNoXROOwqoIo4pOIPJNuK/wqu2yLunyu6KnhF8dHzQRj1OZ1jFVgmDVMDJsAtrooU2suoQSayI4yqPPOPuKCnEQgmf7RoxeNOSN7kA8Y5w5ISBaMh5eUQvHn+vUnfSx6kq/08tZNiuZQrlPfvR58SKLSCDTiAXcUuSoSEYdnbYV34pvt4Xr2cvL5n6p3X78FyuNA4GoR6flPrUKq9SOglHqHTzsNw+pwN/EpNYsahakFTEzMdisErTpfvDswXHlIFmOlxBZKNggKO8fdHPUZqvo1aQbLHL83wgGAtRbAUksE2CKnbTkvNsFElFUAhVfH5IqG/1L+sHEdZtKJGHYhNtIUuVaR/fRJccR78VsTPcTFTHZHgZXbcT3RPG2/UQrF16F2HnI7oMuqvF0mVECXypIhKmy/H4b/C/l0uF7OEFnTyRTNk4v8l2rN9IPW3ceo87LTO8w8auQ5ULKlPRpSG06AmDbqihIhNopOBxFefhSRS+n6t3LcVgVVK5NrYPffbDi0Wyb+fHlOq1tDMzmYnrPiORx0YU0sGox91C4izJRWXC+lUXkjbpbLuvlE3RUTZbKH81hydoBSAKS8KbNIv1rum6fT8/Hn+XWTInyI5Bynbdd1qx+U6Ont3UD/ShjOm+TaiZTdat5zCxccWxC4ssXku2jUMHL1lQCGCIaorxCTxvAyK7uEyKEhhzAn3r7hek2kuvyhp3rZj2T0+Q4fFlWttWJGsWJdmp7Su+JuSGlN2RG93wFBEO82AiiChEJ/Scnp4LMZ7XqZgNv4/7SOkMZDtk0HfKyhI8e8ASdUghe+IRXYCJEFSElEkI2oWN+ii/ssHHTTJaqjCJfZk9flaw8hkRJNe3Pdcx2O8gIrwsuxgZZcOOqPgLxGe7g7dMdbm8INeY6/RLYQyQS1fzQiqriZLorSNKyk4nt4otxozcl7tS+SqJiTfc4IiiuyigoOy/GyL0zciajQ3YBDI7rr0NXZI7fS253nB2H80UBBfn5Vej9iuK+j2t06yCourZLvLYub5JGpbWUzbRgm48NBLGokONM7NtIdqkM1FU7w8lQ/wBkhddrSuN6C2NKaSNqvLr3cvZlUQ2bgfeD3KimSvLbI72f3Xt/Y3t0a7X18u9/xeHVgU8us7m/2r+0x+VK6EQH/Ufn2FFekng073HHXBBs1NeCIp7p5RE38fl5X48r+nRp051FwsTlv5ZSxJXfbbAo8dkEFfqN3dFMgJBElFOCqqKq7oqoAcSjfyf9HlElxyw+NVsA9Ou2GJs5rJnhZjOZDWN1812O2+0fKPWFbmDYPqrqR2TeQHnUjgHcHTQ+3yCZc5NQDSY9Ozyrfg1IS5U5IGOOOSynRVdFRNztgUIFcVO+Siigm6n1jzIWyEPd2T8KV7GmNvTqVj1FzyrlZBJ+57AgNqhg4ouETxmbqly5oaE6W/Dw4RAhoXFF8KgptrAZLrpC8rgCRCCESkqJuvwuyf8AhPn4Tp+Tq/SuC7jaWDoIi4nclagSyORXXKyWvXYN9t0+zNuC9r/r+XF6ZGZ/dh25jM4UyfszqqoXQTuKqz/YsJM2Q/q8yu/sifT5Tj9PHosOFsQLmd0OdK6Qhjuy0FkECNuNuKJCgqKp42VNvjqTsFy8l6jUOozmqcuc5HjN9maUZoXOyTRJxQFHjsqGXlR3+pV+fPUXH4px3nYb6opxzJstkXZVFdl2X5/D8unYFNKuMeiWEOwcafBpW1ZR0kbcFtVFFTdfC7Cnj43/AC6bPEHua89gR6/8WaF3BYrwPoip6bIdxKLUqro6yY/ItMJerSeiyG2BhpIsoDQvPuHKjIDHcNsDPmQgLim624yLo9SIstMtcw1YeuJ1hqvDkRs0rleitnDDjIchVsYTdRbVQGW+VxWx1FDBsWJDijxBo4zMbfSth+b59qBa1eBXuMVU4qCZWOu5AstIzrduTdGLQ+1bcPuk7bNcFJEbEtjNeIqiyw0w1M9YHqWxW91SxebppD+9WUzYEWqedtIzsrI4VZV2MZ2O2BnHR5hiiZOOck0a5JKB3kLyCWlKQoxaV9wPu/p/IxDJmckzVivbhFLhpDlxJrFzBivRwFue2QB36WUCk6Ud9HGmtlYFScXy41Ds4OqWDWr2BlnkuG3d2b8C6uq0QyaO5XxMeFI7nfkJMkOnVm8scBccM3VbbR8RR9wjRdM9e9fs1wbUelLSgrCDn0qJU3KN38FubIfZkZcKOx5TQn7LjLfRoxZB00MfqNtQeUaXfpt1NstKa/UvJLrBpOL4ZjNc+429JsA92E4H7tuDINGkQZChLaHl3GmiOTFZadOQXFIaVhbGGYrqnl2B2ONy8WtJb7tLjWBxItfZe+gyn/tNh+G+8UmcQCzxcbFl5oPabzw4G0Dgdwt31DkUewxKJimkds6xD1Bj5DCqq6/rZ8hyvrKWvfZYhR40twZprVxo7wvIgqCvMxhN0pBm7irNOfVbo/ZT6bF7/QXIlm5di0ayu2rifJcYyBu4qY7cSRxUCKTIkwQlTP2RuKLcw1JszACbtLberLPM6ptP8BjaZYlb3NBH1MrX6+zv6uHXx7+ui480MYpL/YVyMxMjmykdHBYNg2YpqSHENJaSU0PAbScujOJPYPfU2K6faOZZeS6nJLLDHmraLWrGlXrMyHY2KopT1GO+zX1LSxzJ4m3XWAMOBNuK828LymswDR260qbprjF8mj6dxcjlZRV5BC5w6h62elRT4JZxVZdRLVkmmVdF50paCTLjaADpT08ovV5jDlta4raaPS7+t1TyLPLkZddlLjQWkuqZaOvYYGABEIsWxyGhbddcki4Ksq4LDvMSUuD625bMmRqvVbR+xObp5iOkUxGnM2EGqy3bYdpXyNuMiRjlC2yh7K3EUniB9oTkOC5GtIKhcCKpRKc9PesQWzFCuLRktZubyNO2IZXEH3D9+wTaPRxb73IgBXmUOQidgVdDdxOSb7MjFnsFsLTEpV5XXTlVYSYizquUsiDJ7bhB3YzioPNk0HmJbJuhb/j1OqDp96iMpyrDHsfm6MNTcr1Dr9XKpK2TkQwpU2xrZE5qW60+Kr7WQlJK3Ax9yy53BHssOJvArKcsm5Xkltk84UCTcTn57w+4ef2N1wjJO4+bjx+SX6nHDNfkiJd1Vh36pY2RL9EmGvZbnWWx6rM8goJETGW3EsalWRSCLtxWxlnyEcbcRWISSPtBVFWjbKC26D8c2xeCQGR4XkmhFjm+IZXr1qJj9Zhmmc+3x5BEI0lLSPavUUB/dGDc2lJHaFqQHbear5bUNJJRmuTlf2M3eNw5xnmFJZWkMm0EWq6ybguifMVUu44w8KpwQx24fJIu/wBPFdSfaxHpCPVlaUVhWmhJt15HV7qNijpIXEdhJzmQjsqiJIKkajyVdvCPhaSrg9Q2rTSW8lY9U6iX1SziOcWbkbKmaiG6/WRq3TspjDQwGoTVU4vGfIb+rsPnGjsMtqYRxcijH1bab5ZpXpHmeNYRqFlt7XUOW1eDJTzYVfIjyKWHiAzUektsQwVyRHakvEkgl3BqJHcL64rLrVYSWRovmO0v806+kslX/lGfH6dTicrDArRdN3NUsT9VWqGndFnWrOOV0CknakA7GhNSJGU3T0wYyye2NCRlBNbB8Faahym23WFeaJ5Gm1TjahaY3mBYdJ1OptWM2ZvMCwvHKWusrSuqG40KLXtSryOchhI6o4y9b08aHHdbdeYcefbILCxU3ojdYvLx+HSU/G3RpStUuo+q9z6wr/R7FavJKCoqmINdJKPitY8WQV9jdVUK5uXm36ZkXhfahNuvOm080j0R1W3nIqoC5Lyl1D0c0DzPXOzkZTDhYzJo7yqx29x6v2iShyJa5mRCObRsBGktwoz3Ye9qLjUSfXMLHZagxu/VNy87/HSVeoorksP08p6rMtNm4etuqNfb22VZXCo2exSSmIf2NbHUNoBlDAI8ZuJJl9iEDBsNFLc7SMIh96tnW7TYdLc4Wh7dlCiTa+HaxGbRpUkMI+yJvRHD4gjrsWR7iG6aAG70R5FbaJCaANxJRx0JEbQ0VUVN/wAP/vHWf7SL8Y4f36Aud2TWtBFlc5CXfrMUki23bDwmyeOl0urcqavO/wD4Tf8AZf8APr1ZH+C3/Zf8+l0uhRWViVd1Vdtt132TrzpdLpgSiknlOl0ul1FS+2XOIqnAV/Hz19k7437Yf26XS6EpwJpf/9k=","caption":"","directPath":"/m1/v/t24/An-Gl3JffixmMc6pkG09Dsg9leFK1wCSEfyVz1GNbKs3IH74gKi8j7BpYlf1rrCM8r5db7gQmdFW9ssMLg3PMD1jsvCJg37UH3MpSG9v2CUNCgop9cNZgnMp0g05XGIADQ?ccb=10-5\\u0026oh=01_Q5Aa5gFoAPuqoVKS8imespmw15sbt5lhKjjGCjLGVLQy4V8WFg\\u0026oe=6AD0C10B\\u0026_nc_sid=5e03e0","fileLength":284772,"fileSHA256":"96wZxPF7maG2k3Nw+2PkJG/gHj5s4Jp03Wucj8ZAEac=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An8o8U6BVjIeMKgV2NvfkPXn3jyDSbphTWivSfMuOaQwvJ4pTUkDjmaxnipWJALPVZ1CQBsTB6x92SE4B4MB7IfgbJ70ZJfQ9OZoKE1rOGPq6y6Z4MVBOKbRBDVsxBOwNVXqjbt4sZaEQ0ZrOHZGbrPzAQ?ccb=10-5\\u0026oh=01_Q5Aa5gGw3seWdakvZ6h4zHsXLhcX-iNkZBMJ5Kj3goIs6yWyTQ\\u0026oe=6AD0C337\\u0026_nc_sid=5e03e0","thumbnailSHA256":"pycLU3E2mhT/hrQT6IS1TDnl8Vx41pB/+1SX4LaT2dc=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"ReNsLXYRZ/aWc4sreisCHge/DXD93rh3Kr8X4SKxAZo="}}	\N	\N	f	\N
3EB036583A7112D4F534		3	t			16	2026-09-15 14:10:18.035853+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{},"pollCreationMessage":{"name":"Concordam com o Rodri? Yamal vai levar a Bola de Ouro esse ano? 👀👀","options":[{"optionName":"Sim, ele jogou muito e amassou na Copa!"},{"optionName":"Não, tem jogador que jogou mais!"}],"pollContentType":1,"pollType":0,"selectableOptionsCount":0}}	\N	\N	f	\N
3EB049E96F548D33FE1BD7	bom dia bb	3	t			33	2026-09-15 00:42:58.670528+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":false,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"bom dia bb"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1788540397,"senderAccountType":0,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"7HB5ZyLlYQIv5u2LNLEJVvQ4V2bMBK1DwU5RkF4ec2M="},"push_name":"Rogério M."}	\N	\N	f	\N
3EB07B977322F1A5D10252	Vamos direto ao assunto. Como posso ajudar você hoje?	1	t			33	2026-09-15 00:43:08.125434+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0A5A9C02D3ABB27F2ED	O FLAMENGO ESTÁ DOUTRINANDO O GLORIOSO, FILHO! 🔥\n\n74% de posse x 26% de posse\n11 finalizações x 3 finalizações\n\nDITO ISSO, AINDA TEM MUITO JOGO! O BOTAFOGO TÁ NO PÁREO! 🔥	3	t	image	company1/729756f52bee13d0e76ea3dd-wm_media.jpeg	16	2026-08-30 19:51:08.988691+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/729756f52bee13d0e76ea3dd-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O FLAMENGO ESTÁ DOUTRINANDO O GLORIOSO, FILHO! 🔥\\n\\n74% de posse x 26% de posse\\n11 finalizações x 3 finalizações\\n\\nDITO ISSO, AINDA TEM MUITO JOGO! O BOTAFOGO TÁ NO PÁREO! 🔥","directPath":"/m1/v/t24/An-zGw9Jwt5t_dCH5j3Rl_veofJzSAAIqvbeCXYDin4jpSbR-unwvSXIDIFX1PvgImdyc-VnE16IEUXFa3TGHz3fHsw_73vBfhw0DKzCKYYSdC-3cYNA-sdiiIEG9umCdg?ccb=10-5\\u0026oh=01_Q5Aa5QG0UacBIw7ksHWVoVuHz3yqojzkMxCDjJ16TM4JhPU-Zw\\u0026oe=6ABBDF84\\u0026_nc_sid=5e03e0","fileLength":245845,"fileSHA256":"tEUTQckL7MXqsu4jsp3/DRmRdRzvRiVCTfdvaRhNVZM=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An9lkSMdxj17zxoy5nDuJeP2eDbwZqOUBXKMcS74wONEXhDmvde_1XmA9AAxNItr8Gqp_nzoA5RERsgbMenPQH-mpuzxpv_HfQu1yYZuA2nixp5PMl2oTPAQX1xavRA5WJzuh1I8TTr4i6Dsvypqz7uqRA?ccb=10-5\\u0026oh=01_Q5Aa5QGfzQ8zNovQAJLepWsBw-ozV4YxzQiJypONqfkv7G-ASA\\u0026oe=6ABBF358\\u0026_nc_sid=5e03e0","thumbnailSHA256":"pWPNR/FqzSfe3wr7QwSU1foEDUZ4ADWjftGIIXPNe8M=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"CCQXg4pXC4TJ4YsDW5xk5fGq6l+xqAl3cS1VOr9nWOw="}}	\N	\N	f	\N
3EB0AAFDB475320760A108	💙🖤🤍 123 ANOS DE IMORTAL! Hoje é dia de celebrar uma das histórias mais gigantes do futebol brasileiro. Uma trajetória marcada por títulos, ídolos, raça e uma torcida que nunca abandona!	3	t	image	company1/a3210d6f45008951237b8531-wm_media.jpeg	16	2026-09-15 14:14:01.11773+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/a3210d6f45008951237b8531-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/4gHYSUNDX1BST0ZJTEUAAQEAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADb/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCABkAFADASIAAhEBAxEB/8QAHQAAAQUAAwEAAAAAAAAAAAAABwAEBQYIAgMJAf/EADUQAAICAgIBAwMDAgQFBQAAAAECAwQFBhESBwATIQgUIhUxQSMyFkJRYQkzcYGxJDSRocH/xAAbAQACAwEBAQAAAAAAAAAAAAADBQABBAIGB//EAC0RAAEDAgUCBQQDAQAAAAAAAAECAxEAIQQSMUFRYYEFE3Gh8CLB0eEyQpGx/9oADAMBAAIRAxEAPwDzkj0z9VrsswkoXoRIGaSuyJZZRx1U89ewI4JH88/B+AZPAeKdjnwlzMKlqlbq2TCwifq3Ro0ZT+Px1PY//BH8en+Ap5e2lKvkY62QFmToLNesRIgVUVGM5X2/llVWX+5iVbiTvw5G8eaH5N867/B4x8bQ2MnscEEliQVKrUxBCqjmaadrC9ISrIokYcFnRVUmRO/05rCeFKl7EJyqFrkCbb3/AJDWUm+968u5iMUT5TZ66E77dDpB7UHpczYoyrS3HV6N6NQYzZjqRxWeCf7ueOH4BIA+D+35Dj0807xRsPkbHXM/pWm53NQ0Zoa84xmMmnStZsSiOrXkMakdpXbrH+xkYBQC3I9aA8pfSZ5Z1nXbPkuzu3jzftMjkajZy+n5uHIV8TdPtMkVqRYISpdZVIIQj80UkF4+9pzn0SeSPAGlbkMjsPi3eMlr0MVvYdeweTkvZKlQAqTPLNA0UM9eLhIi8sJSURWOe4jdyE7pZdcTC8yDmjMLyCNTrfbNe9GJcZQSEwq05Ta86feKypY8B+cK16ajY8N7vFLVlqxTI+vW1aJrNp6tZWBj5BlsxyQID8vKjIvLKQGG4eFPN3jjGQZrffD27avQnnWpDczOv26cUk5RmESvNGqlyqO3UfPCMf2B9bh+qH6YfF/hnxLfn2XznqmU8k6/Z1/JZfUP8SLY/UD3aumMipyFclBVqUbFYQy/dOzwLKTFD/Tdap5Lw/1oaB57xP0jVq2o4zMbzihgah1+vPdx1nX7+OxuMnQyWFlsx1ooMDD7spRZ0+2sSByrBj5bFOEgFO8/anrQBsqsX5HTNmxOExO07Ji8jRxGeWY4m9PUk9m+sLhJTXkIEcojc9H6sSrfBAPx6jRYoVhzWpmV+AO855HIH7hRwOD8/BB4+Pn0ct6+lvyfQ1exsj4/WbT615Dm8NTVNfW3JfzGcrrI6zpAY+jhkCQqyCN5CiFojI0kr61g+hnZfFml42fT/H/jXYfIWHwMeU2TXbWRGU2JWaGIWAlF/erssZkJRoeHYuvTu7RqEuKeU0LJKidhb570zwrKXTdQSBubn5/lef2reN/K3kiGebUdOzmXq0Yw1ierVc1q0RPUd5OOka8nj8iB6LFX6PrWt3YK3lryRgcBI0wE1DGuMjbSHtw0ilSteT45ICTNz/sPkd+1fUxuloLXXMztXihWtFCkhWOOLuze2ijhRHy3wvHwP9PQzyG5ZraMn7trJxV0Cs6tLI6qBwSTx8kc9ePj/MR/HpX52PfH0gNp6XPv+Ka+RgGDKiXFdbD2/NNdS3WbB5Ovag6OqSe4K5YpzyB2VT/BI+Fb9x8cFSAfRw+mHdPHdC15H1DZNpu6sd90rJ6rQvmRVSkZ5a8sKT2OjNHVPsNFPxGyiOTuojX3GWlw0vC2apLVElnF2v02uQghe3VmtzMW9pXiEUxHKQx9Z5iqf1HDOeAKhifGseQ8qweP8Zs7JHFYctk6iCYe0ie6ZYIu68nqOV5kAJ4JdQCw9niPHF4pst4pERv+PxPavMI8NS2sLYUDNo371sPxpqPgDxroSaltd7Rt13DIZDFQU7Wo5fKZyxJUN9JrbXIiy11jNVVjjWKsGccfDFC5Lfk76iPFu5RfUdm9B17E6xv9mtHhbWenzDWV2PEuleC1EkMkn2tWVK8VeL8C7yFGKKrseuP9D8UvoWXxGU3TVlm2J7FuZsRehjqYvpBCpq/c2S6xV5Hm90FFMgkDQgBC3ZjD9Te/LsGpTR7/AOMcfp2wY+kIJbuuR1b0MkUg9yhDakhn4QukSkO5Z1ROVjIY9SYPxLDura+onXeRM2txAEjrI2rLjvD30NOAJAMjoYjnm5j09as/19eV9T8h1t5y+oSfTHk8ZkGxQr5SrCZd9kMbVVfrYXlDw0bL8H4rAr+49EXyT/xINMxf1Ew4rFdLobZsJjsDuiX6/wCn4vV7s2MfO12HQxyh5MaOJWLun3E3EsJgEb+cvhuXxpb2B7G8tekyS3YGxNZa/wBzWtsIbHMM0XAJ7TCqFPfj5KsjK7PFsbzt5R17e/AtfU/J3jnC4rCV45p9fzVC3BenjDhD9xEnMckS/wBFlCOyCRpIl44PVV+KcQghsHSftW3DMqWkrPSofMfUb4uwOCymeXPV8ocd9X8/kYUcdZhltWsKkbMJ4ULAMrccK/IQkgdh6v28bv42ofUBg/qryXmWCnpuv5FtgrV6N6WvsOdhkqxywRVqxjAeOWWQVp1kMXKCyGKL+QwJq+seO8x5XtYapnbZ1Rc1LFjWdTJYuVA8nsckpF+TgRhiUjP5k9V46jWnm/a/B+6eD30+TxrHrOZ1eKquFzFeMt7y9K7tXflxyqpK4ZyvBdU6F+6llr6EqWlZ/remOGKktqQP7WrKvlLGyXd5gzuOtajam3VU2CDE6m5ariWuSuy4z2+o9iSH4T2Rz1UoAzeiv4O0fCpesxPjbGRWncrMM5ipRFPKx9+N3gsGRQtJWinQtFxLIWXkj/loHcditMq+SLeDs2LmVwJku0K7w1Yxbsr7Ui1zHErSoJmb2+qq7qHIHZh8kleK9Z03J2LOc1rE6/HHTqR1Ldy+zfp9q1K5Brxx2ZWsQrIjiMStG/cqeqr1eObhagEKgXgX4v8AB3rttJLiZNpMjm3w9qCsFuvNj7FyKjXqQLchKx1WkDgOZwAHd2+FAUDsrEdQQVYuz8qjyQ7+mPmjs0euQONlSIiGYRu7xyrIVB7Fg7Bx8ggsg4XgCXreJfId02sfrMEOYowN7stmq3txrFHK6LPJ76xSQIWJIMojPDAkAceoenr+5Ut2kjqY5stl8ZaN+U0yMjFIYi0jye5WMiyJ+DEurFeAx545PrWXmViEK01vWENOoMrTqeKseW3zZ8Vg7eDxe4ZeaGS/78shV68qFHEiwt1dgFWwRMqq7L2YPx3HxaPqOe3r/kvP4fI3Ld5XjpQg2IViY1aqJBGqPy/uKQhPuklpOA7/AJlwJ/6cZq2ob5+u7x40yuQu4vK1WjrWbTY8UHsy1oUssxQzLIjSxPH1j5H96srKrAufXhktW8g65gsxiNInxdvE4ep91ko2+8Vgxs8QyWpxDIB7ihVWOPoz+8SS69CVl1LCypv/AH1tVOtKfbhzaLel/wDtALK39WPifJvZxtKaGKzWqYOSGkIZv6kYaSdnZi1jrLReH4YdBalYAoIolcfUHqMGu+G/DGWq2sojbDi7uQuUrVmV4hZIrdrSK8jBTMpUEqq8iFB88D1WfGGCxdzJGzsFKxbo4XHpmlg9xejQiP8AqcK4KnmX2ye34/HBB54Or9z8keLfO/iDWdV23C2kmx7zV6Qq5ejNNUhFKLs0NOKlCEVFpJx7Jj5KrGVIkEYBCWAG5JI51+fqjgKxOZdhPFYDoztHIPzkQLyw6Dk9v4/++Pn+P9/WnPqKqbljPCHhzI5ndcrkK+wa+9hqD3J5K6cyLMHIZ2iZ3aQs5H5dwe4HCkhPxtjMXU3v7fb8NJkI8PIWlxizxI9iRJlVowZOUbr2ZyDypEbA8LyRvrzRv+reY/pXwBs+CJ8Lj8aHmq3cbdrr+lxrFWeQRQyRxxrE0UaKWh4/JeOvLPzHBNUzIEGvNyLIS1rUdutNJBNCwkjlicq6ODyGDLwQQQPkfPoiaj5rm1F5bOFxs9G7kBFHkJK9yOOs6K4YtHXMDpFIQCOx7oveTpGoZVUb3azxTugjIHdlBYfPP8+ullA4fpwvPP8Avx66QRFtDQ1FQPUVofwL5j8lxTmPGPNYmrNJFE5pQNXWtLHKs6yAtGZpVWZjCsjsi9nHCjhlrvhvy3uOJ3XLbPTWzbuzyQ5KR4w5jaavI08aypE0ZMTPz8KV/Pp+45RonxDsEeuxZrI5B2UvSakHiT8axeWCwGYqOoHWtN+PPYn4447ERvhG1dxG717VSlbvTNBajFehD9zMyS1Z4WIReTwBJyef8pJ/09JncIgB9UcbcX+wNNmcUslhM879v1V/xWwZHbrm+5OW+tKM3aAeTG46vWeVVydZE4hiBCNyokHUMWdX7O3JLEjzHrm2TYiHRjtWT2izlBRqUDlnSp9s3t2kVR7aj3AeXKdmIKyf2sWB9ZjyNHGfrLZiHasXHDZmexGhWxKU5ft0YiIqSOQSOTxyOSfVgynmTyJgczFax+/Us2whV4rEmMhsLAwaTgqLMJKyfkx7qA3Dn5+T6ZISUN5G9YtMxWJS0qVncNpvETRl076cExHgXYPKFXO4/LZGCeGVoK4uwCHGBCzOHmSJJ2Es9RnRVbp0jUsrSdfT3FtUHiLV4IGxk8gyA7zU2evKytjLgmjZwyuCqtGjH4Bb55YEgCaH6xPqKgxUmFTyVM2PmjeF6D4ym1QRsVJAhMRT5KgkdeOQD8n9pPXZdc3fVj+v+SPHGt5OWRX9uXWpYpBzEUP/ALWuYVABHAC8BgX+GAYjaGIbnziD6e+w7UbPhnLMgj19tz3qmaVkRT8t3cxNj6F0VL81sw2o5DAxWfsAwjkRuhbgNw4PQv8AkP39b8xXmfxnmPC2H0vXPHweg+PmvPlLGOifGwtLGQlOaRGUNMWqXYlRolZzFAE5LcevPDL4HS8Zmb1fK76+VmNh3ju4fHGavOpJ5b+u0TqeQfxKcfyCR++n/FfjzTdo+nDdNgv7/ew+fwFqOrDX5r/dWsfLJFXmkNRwZCAk6jhZVjVoyQQyK4HjH1tpT5e5A30+CqwjaJV5pFgTqPzQOxXlyvT8lzZG5gcZJrOQRcRcxc9RGi/T1nSRD1YP1kWSNJify7OpBDIzI2t/L1v6c6Gk0quM8XYOvHgKCJkM/jtYgWPKSr/Ukjq2UQq1j2ZIJCSf6fuFiOqMDg7I4eveyNWlrEl+28rCv1sVlgczl+vQIrsP5X+R+/HHx86m27w/k9g+jbB7/Uv7YdgrZqXD5bDKBOrJGsxjnMRX3+GeFfmaQBDK3tIA3U2664kthvSb9KtpCCHCvWJHWg/qGHxGKqHDUqO3CnscSwTWbWANOK7D7hYK8pyMcYQ/h/mAPUAk8nn7g9Uw3jHPxjJ1PIcF+3CkaV7mnNDIyypygVY8lG35cq6HnnlEZeCOfU1q+uZncoslr8GOq2bEOqQXDK/25hSM04LCcTyJ1jkQFiwDx9FSYk8BlaRirbBpFBMhXoNh7l+KnVxsmHyv3VZk94SmaYfcye2AnEoL91YqHRVVJSRiFBQXIUrW+/zjaiPJSyvMi6U6Ecb/AA70NMr4oTMwy/4Cw+22cr+otCcbcwCUkjjKFysbNcllkZPx5Xqeqns7jkc1vEeKPI+eyBxeL1DIS2V+OrKEU/t+zOQp+CP2PoxXNSy+6ZWDK4XEY1BfuW6NYX7QpIZJHIEsPM6STtw5k5jUxdncdCoPN/v6X5G3TVMdp2R3M27iy1J5a2a2Cc42SvJ3CwrY/CDpXMMEaxxNwGjl/YIo9GRjEpSM2tAXg8yjlFqEfjnxzq+sb/hcD5Bdrl7MwTJ9p9jFNRibiVefufcbs6yRdfxjK/lyH4A5uuZ0/wAbY6bO7pjtJnlxWBsR1bFaWaCwSzPbYOoFWJViMePnAJ+Q0sII/uHpls36jrOR0ptZtSLY1vK18XOa0rTQWYppy3USqI5GjjkVovyJJJV0cd14f+VdjpVtG2iSlgcli85TjGGvvPO6mWY25hPLJBIX4brZsRH5A/qKQsbc9l7+Ke85tCDIXP8Avb91vRhWk4d1ahdOUjvYm/Whje8TQdMFsOlY3cb9e5DPLLWuYOOSaGSs0UckrKrlPZaaRlUP88gKQ3I5O2J83edPE9m/CdTzuNbLYlKteP8Aw40s1OvVMbGRXNszQkR12BLvwsTydQgKstXzeFn2qS146w1Wtj8hgcCbiVkyldVSxY96a7AXkm9tuiSySEryRFCTyoBJZw6jvGv4qfKXK9yjjtiytfEGHXMhJYx1yxHMh5m9t5IysUrxExOV/OdfaC9WHrW3jQ4klWonj961ndwXlOZU2Fue/EQdjFQusYWtk9lTaDBvdXKT3ZZ+ItJSzB7pKo7e491WVg7g9hw6MVZXVwpBsz/kTy1lNOv+Ibu4eMqNPIz15wseubM9mJ0EntqjRU3UMWlJICnlxyfnnka5qhldkGb0/G3K0FmiqvSjkvLTiuVZRBJYaMydYpJOyRFupUjiQ8OQCOeN8fbhrOG1nD7PVtVqecz/ADdaskdiAUHirdpGk7GKN1iZ5ELkryD/AATzSMUlxKVpMFQ0txI2uKIvCFp0tKBIBib8wbTrQ/XB5TBeVslq0OPbZMdWpRTz16WSkeJ6zVFkkKzRqD/yZZVB68KZDyrDlGuPkjXtgq2tDx+b8d5rW4cxdxn3bXVkmszxME/qiWwodFkklsFU94KVWMN2ZDKavnddyM2Tu5DVIbFnEyRLk8hisFcllahDWVYBdsPMWaGMNaHWRgUBdhygXgGnf9My2Jxul0b+1UspXjhmt+zZuZSSvk6ryTRCbrLBC3tusULQtEV6cMSA46p2hrI0hSrrA1jUxrHzasqyXVrbVOU7TeDwfTeO21ULxZi9g2HJZSS94xbMKmxLiqiV7FiO20klkc1kWDgyKkQn5LAfLR8MCixvY9N0nN7D9QGQ1bfvGdynFDMZYtXw9eybaktAnue5DGT39mRnaRv8quzLwVDSOl6nTqnGxr5SlwVlssly9YxeRtVWb8QFjHEZYoG94qvZSfdclgSOCBsOO1PZPMNvPeRNxhytWhWjoVZY5T93YrQ3JpVisNYY+4VRkQSFj+CheoVV44DTQAttx8NGzOqMk71lfyXJf1abJUL8OOqwXclHLFgqiFQMbLFP7bKXiK89WDo7juC0MgD/AAUsHl7LXK+m4berWLz33mxZ25ksZbykciLIEihlWcl0/rntaZv7yCehbsOwY1nXtAht5+Ez4nYXzlx8jBalxuMmmrSGwXKM03Ef5LLIOBGFHLfIZvkzbZldb2XwVRpbdko8vYw142qMOVix15HssvQs8KxD90+D/wCojHCDjg/BEG8MkhThMgkgAHcReBb3PNFUrElJSgWUACSRaDNpPe0CdLzWHfE+H2LHeTrmtWddO3Rw4IJdhq3ZVaKs1aIzqskRWQ9I3KMi89COxSTp0ea8qYrYtd0jHZ/BeLjrBUQJLcnyNmeyGQ2ECRx2D16KsPwYgenRm5AfhS7j9Q1nKZrKbBFNiMHFZxEkAqV7kss0Ntg3Eyz9BwwVygAJ6CNSrcAAON40K7sehYo3fN929cxk2YlqHIZa/PGwswxQmMjk9AVWUMUUdg4BBHPozYQUguD6oE2sSKAoOAnIbetx33oMRrtsvkba8RZ0tM1FjsdHclx89qMvGj1kCJHIjHke9JDL0hPZzGB+IDPH0+WsTs2sbPrFDDeNH1GGe3UtRrO7iy8tkq8Pu2JwOrMqhvyPKnktwCCxA1/TKcT5lsjltdvR5GJI4pIxPjpKwEtF1aKOGDqCq1GT4CFlZiSexHp/5E8fYXJ7NhMqPJV3PYwV6ouUcpk7ADGNJUcdj7nwvdgnPXqJXIA5K+g4ZgN4dKSBmCQNLSBHM+m/WjPOrdfU4okyqZtNzOwj7dKAeJzOXhq5PCwZS3Dj8gI3uVYpmSK0Yuxj91QQH693A7c8B3H7M3M9DtOyZzFx1Mrnb1mtQb3q0Es7PFCzRxxEqrEheY68CEj5Kwxr+ygBel6YEVgFdFfO5KssqRTACKwUB4+TwxHJPp6crftWZrUthvdDF+3APySef3/6el6XqVcmmsV+86C0LkqSI7EFTxxxzx/49cLO0Z2aolOXIzPH8SHsxYluBx+/+npel6kCakmuOK2DMRJYghvSxqqBh0bg88Af+Cfj/c+pPJ5fJrG2O+8kaKIF1LcE8kfP/T/t6XpeqIFRJNQq57KmxGptyfmnuEhiP4PxwDxx/wBvTy3lMr1Z2ydpinwvaTnj4J//AAel6XroATUk1//Z","caption":"💙🖤🤍 123 ANOS DE IMORTAL! Hoje é dia de celebrar uma das histórias mais gigantes do futebol brasileiro. Uma trajetória marcada por títulos, ídolos, raça e uma torcida que nunca abandona!","directPath":"/m1/v/t24/An-Zy42JNutnDKRhr_aFS_1aq97U25X5X13oRPg0YkhRpdXwsqoxTLxWI6sTuBnh2I9RU7Vedy2dQZqeYjzOxPwfkrz4NO7Gk1KQvDp_KOKzOHbVyq37JyYmZOxmdRHlNg?ccb=10-5\\u0026oh=01_Q5Aa5gEKJ67hRhWZnucr5El-VOQn54dFJnK4wxnG34AybQaw1Q\\u0026oe=6AD0B8F3\\u0026_nc_sid=5e03e0","fileLength":499462,"fileSHA256":"mq4/2ntYpsY5HdQL0XkcELkii1wQ1cYtIhOaZny3FcY=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-gs6zAxJwfqo8SKH3fid51_owV8XyCFiBawUTTv5yg_lp6UtetbmY_fU8XZlfumpozIjgIpCFeSSG74CUyGKkJB2rd_6IOm7yeN1rIMqODv3OCxUJcc1c_v1-spIQYKKKPRfqU9zi7b13cPLnFKPE_3Q?ccb=10-5\\u0026oh=01_Q5Aa5gEWBfBDNM_fzQ0QGrEHiOy8hs24ZDzsTBeoacLtWO_iJg\\u0026oe=6AD0D390\\u0026_nc_sid=5e03e0","thumbnailSHA256":"9RKgTGx9afporzvDPlflrbQjqlbGwwUKTJfBsd4ENHM=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"mqvwRfQem/gkXmM1XvjktwMbr4PP0CVkGfgz7SfJAfk="}}	\N	\N	f	\N
AC87C5AD465757E8825EC5B6AB3CA68B	Desliga o bot	3	t			33	2026-09-15 13:41:33.5565+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Desliga o bot","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"TbjNM0eHBhhxrcH4RcoXLYaIVcauIwqh+I0ac8IT+0k="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB0C829A63AF18525FCAD	ainda não voltei agora pro pc	3	t			33	2026-09-15 00:43:09.675878+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":false,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"ainda não voltei agora pro pc"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1788540397,"senderAccountType":0,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"e3YInVs4QP5/wxUAjCcwBGzVwWc77Fqh7ouSGdFrrNg="},"push_name":"Rogério M."}	\N	\N	f	\N
ACAF3D1B6E32C343B4C7E378E1F46848	JOGA A LUVA GOLEIRÃO!!! O ATHLETIC BILBAO ABRE O PLACAR!	3	t	gif	company1/d227eb7b522437119ad1ecde-wm_media.mp4	16	2026-08-30 20:03:23.615539+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/d227eb7b522437119ad1ecde-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAtAAADAQEAAAAAAAAAAAAAAAAAAQIEAwEBAQEBAAAAAAAAAAAAAAAAAAECA//aAAwDAQACEAMQAAAAzvUcc5FrSZVqFyvSVwOpDJOebOaLcMpSiySiamWRliTQ6Tihh//EAB8QAAICAwADAQEAAAAAAAAAAAERAAIDECEEEiATI//aAAgBAQABPwCnigs24ZfxqlAQYTV9n5XZZ5Bis+qWx5eoBSoyrtYcdyoT/P1GPseyewJuNmOExz2jjj0tc+HHHHxw2jg0Xt7HYl8H4Gv/xAAaEQADAQADAAAAAAAAAAAAAAAAAhMBAzBR/9oACAECAQE/AN5WKN6UYqxTev8A/8QAFxEAAwEAAAAAAAAAAAAAAAAAAAESMP/aAAgBAwEBPwCmUymUys//2Q==","URL":"https://mmg.whatsapp.net/m1/v/t24/An-99L3XMuYxvPOHebPmMbARFLkoe0SajPtThBvjepQPtJAJD4nN6XuIOLdQoC_HaGkVnqICYZn0XlATWrfvz532vbEcEZTINtOCZS8dyKek7azNyfmEG9kC1zpzv0SL3w?ccb=10-5\\u0026oh=01_Q5Aa5QG_E7fUS4pvH9qA62REYmmk8bewclPzwsIcev67uUC0kw\\u0026oe=6ABBE6DA\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"JOGA A LUVA GOLEIRÃO!!! O ATHLETIC BILBAO ABRE O PLACAR!","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An-99L3XMuYxvPOHebPmMbARFLkoe0SajPtThBvjepQPtJAJD4nN6XuIOLdQoC_HaGkVnqICYZn0XlATWrfvz532vbEcEZTINtOCZS8dyKek7azNyfmEG9kC1zpzv0SL3w?ccb=10-5\\u0026oh=01_Q5Aa5QG_E7fUS4pvH9qA62REYmmk8bewclPzwsIcev67uUC0kw\\u0026oe=6ABBE6DA\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":484242,"fileSHA256":"jJa9rbE9lFggF86gnO9l1GaSJJlJF68kqPhja3cBijs=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
AC6BE98F5D6F0745510C81469B5CC9ED	SÓ PODE GOLAÇO? O ATHLETIC BILBAO AMPLIA O PLACAR!\n \n🚨 Estamos AO VIVO para Celta x Athletic Bilbao!\n\n🔗 https://bit.ly/3UhbGn1	3	t	gif	company1/77ca65ec6eeb40c8b87f4fce-wm_media.mp4	16	2026-08-30 20:07:47.906885+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/77ca65ec6eeb40c8b87f4fce-wm_media.mp4","messageContextInfo":{},"videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAgMBBQQBAQEBAQAAAAAAAAAAAAAAAAABAgP/2gAMAwEAAhADEAAAAOe22rynUzOeTf37zngXoLEC5QTOUoTKcXChLYcUJPKmrQZMxUdTNUpxCP/EACQQAAICAgEDBAMAAAAAAAAAAAERAAIDEiEQIDEEMkFxEyIz/9oACAEBAAE/AMdMKsLWR+Jlx4ghUz8VyGoMKDMGA2LFSoPTWfu4lseUNKaXPmkQ0/mHEOToT9zB+3Oih5bMqqBACcdpO3npzGA3Nwo4+xmbHq5sfEcccEUUPQWTgM5gg+JX2W+4Ye3/xAAcEQACAQUBAAAAAAAAAAAAAAAAAQIDERMgQTH/2gAIAQIBAT8Aul0dWKHVfDLIyyPRaNa//8QAGBEAAwEBAAAAAAAAAAAAAAAAAAESETD/2gAIAQMBAT8AbNKKZXP/2Q==","caption":"SÓ PODE GOLAÇO? O ATHLETIC BILBAO AMPLIA O PLACAR!\\n \\n🚨 Estamos AO VIVO para Celta x Athletic Bilbao!\\n\\n🔗 https://bit.ly/3UhbGn1","directPath":"/m1/v/t24/An9ZA97y4GlkaTHDSPm34qTVVUlNCUiopyccCJOmokz6Z9QRXQrv_xgxgDzygH7AXmb01u3Ax28QAVA9nyAclsyIdTQ2vRxj8CdIwSTB3tgTBqx1BE1Dvv_zYd01Iy_7wQ?ccb=10-5\\u0026oh=01_Q5Aa5QENo2PGSUjrk8MX6VTsIHXkWYuYXRHOTvF1prrIJbY3cA\\u0026oe=6ABC08C6\\u0026_nc_sid=5e03e0","fileLength":627916,"fileSHA256":"BjuhM3R+fKI9x+LLuiR7Vh9qsQZWOy83cui1PGJRthk=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"viewOnce":false,"width":640}}	\N	\N	f	\N
3EB09369FDDF7748073702	Sem problemas. Quando estiver pronto, é só me chamar. Estou à disposição para ajudar com o que precisar.	1	t			33	2026-09-15 00:43:12.905106+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB0A7B4199C64E47374B6		3	t			33	2026-09-15 14:27:03.610722+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2},"reactionMessage":{"key":{"ID":"AC65C4334EE1FD829F46548B4116CA8D","fromMe":false,"remoteJID":"149838658277476@lid"},"senderTimestampMS":1789482422000,"text":"😮"}}	\N	\N	f	\N
ACDCCAFF29C7816E61012D9E0896F8F4	MISERICUERDIAAAA! OLHA ESSE GOLAÇO DO MONACO!😱😱😱😱 ASSIM O FILIPINHO FICA FELIZ! O ZAGUEIRÃO TÁ DESLIZANDO ATÉ AGORA PROCURANDO O PARIS BRUNNER!!!!!!!👏🏼👏🏼👏🏼👏🏼\n\n🚨Estamos ao vivo com o francesão! MONACO X OLYMPIQUE DE MARSELHA! VEM! 🇫🇷	3	t	gif	company1/c3e6492ce5518a2a654998ca-wm_media.mp4	16	2026-08-30 20:18:22.887353+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/c3e6492ce5518a2a654998ca-wm_media.mp4","videoMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACkASAMBIgACEQEDEQH/xAAxAAADAQEBAAAAAAAAAAAAAAAAAQQFAgMBAAMAAwEAAAAAAAAAAAAAAAABAgMEBQb/2gAMAwEAAhADEAAAAE0sap7iUVZxOM98u2DeryPQ6VaAl53X6SAYgHNQbuSMsOnlgszepmzqEDSMwR73ZRT1TJGv/8QAJhAAAgIBBAAGAwEAAAAAAAAAAQIAAxEEEiExEBMUICJBIzBRYf/aAAgBAQABPwDBAOwjiUOyL/s9TjscRb9w+KT1AU4ZMSywtj4xLtuNyiWCtntYtg7oQv0fHE5A7mJz/Yee46D5Nu+4ETBJsHsPPjmC/aHTaO+5Y6MOB45h69lOlrtVnZud01GlpStmRuojEsAW4gFOCTYRifiGM2HJjCkNjzDGSjjFpxiPVQq58+WuA+EclZprKxQAzDdumo1IdLEwB+r/xAAjEQACAgAEBwEAAAAAAAAAAAABAgARAwQTIhIgMVFSYXGh/9oACAECAQE/AC9iiomzxg4QbqZNgXf5ByZMqC5aYbKw2w4Sn1NFZojv+Q4Sla6RECChP//EAB0RAAEDBQEAAAAAAAAAAAAAAAEAAhEQEhMxYiD/2gAIAQMBAT8ADyCSsnIWTkIOuOlHhmzSJVqiv//Z","URL":"https://mmg.whatsapp.net/m1/v/t24/An-Yuo479sW-PZMO4z5pmvIGyZ1tqb5jZgPsrHykmrS_PLjPhX_8iqIGs3NUUo2mcNid9NFxU4AnBo7sezrnNZNwURPceXyG7ueo1EaJO0sJY7jGS0jX1_HBk6MnyertWQ?ccb=10-5\\u0026oh=01_Q5Aa5QGm50R0onYqtFoP40Pu-WXMkt83jEvJWoAAIS9pxW2h0Q\\u0026oe=6ABBF82A\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"MISERICUERDIAAAA! OLHA ESSE GOLAÇO DO MONACO!😱😱😱😱 ASSIM O FILIPINHO FICA FELIZ! O ZAGUEIRÃO TÁ DESLIZANDO ATÉ AGORA PROCURANDO O PARIS BRUNNER!!!!!!!👏🏼👏🏼👏🏼👏🏼\\n\\n🚨Estamos ao vivo com o francesão! MONACO X OLYMPIQUE DE MARSELHA! VEM! 🇫🇷","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"statusSourceType":2},"directPath":"/m1/v/t24/An-Yuo479sW-PZMO4z5pmvIGyZ1tqb5jZgPsrHykmrS_PLjPhX_8iqIGs3NUUo2mcNid9NFxU4AnBo7sezrnNZNwURPceXyG7ueo1EaJO0sJY7jGS0jX1_HBk6MnyertWQ?ccb=10-5\\u0026oh=01_Q5Aa5QGm50R0onYqtFoP40Pu-WXMkt83jEvJWoAAIS9pxW2h0Q\\u0026oe=6ABBF82A\\u0026_nc_sid=5e03e0","externalShareFullVideoDurationInSeconds":0,"fileLength":482260,"fileSHA256":"ZvJypRKWZOwNkKkj/HozoaOXMvVs5cY6NuQDRedZLDs=","gifAttribution":0,"gifPlayback":true,"height":360,"mimetype":"video/mp4","seconds":6,"width":640}}	\N	\N	f	\N
3EB071E7F865ACB12F2E7B	A UEFA definiu as sedes das próximas finais da Champions. 🏆 A briga pela Orelhuda acontecerá na Allianz Arena, em Munique, em 2028, e no Camp Nou, em Barcelona, em 2029. \n\nA decisão no próximo ano será realizada no Estádio Metropolitano, casa do Atleti, em Madri. 👀	3	t	image	company1/0a4b6b0290ef6731e790a736-wm_media.jpeg	16	2026-09-15 14:26:35.119838+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/0a4b6b0290ef6731e790a736-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"A UEFA definiu as sedes das próximas finais da Champions. 🏆 A briga pela Orelhuda acontecerá na Allianz Arena, em Munique, em 2028, e no Camp Nou, em Barcelona, em 2029. \\n\\nA decisão no próximo ano será realizada no Estádio Metropolitano, casa do Atleti, em Madri. 👀","directPath":"/m1/v/t24/An8xkkc0CgRLBJWGxMaBlLUry8ESj0w5txVRHQITfr6gnDZ1-ZTPMvaPIXnfSbxYewkbxmCWCeku_jPqU6P4dzuNgih0HkM9EoknCWWu6g0gilgtwX5c03c06kDGOCnDwQ?ccb=10-5\\u0026oh=01_Q5Aa5gG_FaxYXFJiHnXhnIgr4jyKbLfv9WtP_OhSiBkT33XU6w\\u0026oe=6AD0B394\\u0026_nc_sid=5e03e0","fileLength":417729,"fileSHA256":"HCYIK5PrRfQzh+w/bnpnBQREABNRP1S4POu3MTN4gbY=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_2Eyw0XB2-0AwBckYfv0o_XGCJia9eNd-RUbT07gXnDo-Vmb2diaJjO_FchcMXUpx60LSwPtQkrAlUVxYvzRhs9jGwY8w6LwgogQtQl1gWzAnDafQqad--8UOKdH2I4S9UwBTgcsxtGQCKk3QbSkAKdw?ccb=10-5\\u0026oh=01_Q5Aa5gGdV_GOROUddmGdQkhNd0oKYi_fDrSeq8n-bFQgkxeSKg\\u0026oe=6AD0CFAB\\u0026_nc_sid=5e03e0","thumbnailSHA256":"BfJquW40CjraB+5eU4O85MPjoKiafFNZoIOrR7DOpMY=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"xDQr7NT6JIWdphFsvSbCwob1s/RBrUGzt+7MugDGcBg="}}	\N	\N	f	\N
3EB098716CD6FFA70D7212	O PREÇO PELO BONTEMPO É ESSE AÍ? 👀\n\nA direção santista teria definido o valor de 71 MILHÕES DE REAIS para vender a joia 💎 brasileira da Vila Belmiro! Será que o montante tá justo, torcedor? 🤔\n\n🗞️: ESPN	3	t	image	company1/805a4379df2d38e002df33f7-wm_media.jpeg	16	2026-09-15 14:45:51.336643+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/805a4379df2d38e002df33f7-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"O PREÇO PELO BONTEMPO É ESSE AÍ? 👀\\n\\nA direção santista teria definido o valor de 71 MILHÕES DE REAIS para vender a joia 💎 brasileira da Vila Belmiro! Será que o montante tá justo, torcedor? 🤔\\n\\n🗞️: ESPN","directPath":"/m1/v/t24/An92L19mgwoHmLwqkNtpY8YMuIQKR1lqXeT64RFp8OnJTcjXij4U826yntCuPrDAz6pAP52YOv-wxuPqPVBrbHaSyTs_S6lg3z06xbv8ZQBwDQdat5_gAEthgQdNxaaaHQ?ccb=10-5\\u0026oh=01_Q5Aa5gEhwAfNic9RpLZit2t1TMyTO4tfB1HJEPwZntx3cuVklg\\u0026oe=6AD0BBD1\\u0026_nc_sid=5e03e0","fileLength":271145,"fileSHA256":"YCCS37c55G3bpy+36vj0JBESZaREY28As3VlvvVY/iI=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-kyJGEh6xILJzIA1PA7uuq9BIDQP9upt4fBa98QGTuBY_WbtLrP47cSVYxtVcjcDjVvaCskjQeRn5si0CbmQRKosulqY5K7kCfWvaTb6f_8TlAyjc8z0HXvY3jbQ9KiNTcar0pV0g36BNDWFxa-_t1TQ?ccb=10-5\\u0026oh=01_Q5Aa5gEVCuXO7DS5xiBD5mTGKPsFoKKyvecREzfbkZYFEGg2AA\\u0026oe=6AD0C982\\u0026_nc_sid=5e03e0","thumbnailSHA256":"7EUq9YMukJurFRTrImHspBmySSY4ObvdrMM4tdXe13Q=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"MdkhGT1gOK2tWeR7BK/lu6ior+zrfmeaf9whiF18+QE="}}	\N	\N	f	\N
ACAEC74E51DE5FB8C5E2FD5B55FB636E	Áudio	3	t	audio	company1/a0ed22a86332bbc1fd1e8480-wm_media.ogg	33	2026-09-15 13:37:42.110366+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/a0ed22a86332bbc1fd1e8480-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/597724156_1793574064981461_6832780034277779537_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGn_J34s40GF2O88qsdbOsJ-gt84SvenJCv8MGlfPMCdQ\\u0026oe=6AD0A53A\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"CjgJRwbQU+OE7QXh8z5ZedrfXfq2aNnedH/t7oz89G8=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/597724156_1793574064981461_6832780034277779537_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGn_J34s40GF2O88qsdbOsJ-gt84SvenJCv8MGlfPMCdQ\\u0026oe=6AD0A53A\\u0026_nc_sid=5e03e0","fileEncSHA256":"ONvHNyQ+mkmZQn9xmG/VO6nzgeWYsFW06fUFy/UTqkg=","fileLength":18524,"fileSHA256":"dDBXPLxX9g8xw0STfGO/590T1PWokekCcVmx/LNfGC8=","mediaKey":"CjgJRwbQU+OE7QXh8z5ZedrfXfq2aNnedH/t7oz89G8=","mediaKeyTimestamp":1789477330,"mimetype":"audio/ogg; codecs=opus","seconds":8,"waveform":"AABLKj9YVVIpVUhYVyNRUEAIAAAAAAAAVRZXTyZJUi5MPRRYPzVNQEBECwA+Kz9TJQMKABNEKkBcHUM3CksXAA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"r4btviWHzpzz1UakFG+7XmdrdGSJJncH+BRwPo/wWho="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB039F3B26E38F13F4259	rapaz	3	t			33	2026-09-15 00:42:59.44001+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":false,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"rapaz"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1788540397,"senderAccountType":0,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"vkN2QVsMI8n5iWJU7VbdVVaNbQrf2FISCcwmEkQD4Qw="},"push_name":"Rogério M."}	\N	\N	f	\N
3EB0890C965FCF3DAAE045		3	t			16	2026-09-15 13:46:26.330722+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"4KGwindf1UP+QCuKg7bOjS2LHkjLn79vtbOEDZUBx/0="},"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"E aí, qual vai ser o placar de Fluminense x Platense?"}}}}	\N	\N	f	\N
3EB0256A6746B2BDAAE13E		3	t			16	2026-09-15 13:55:17.202178+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"5d4lJJSNI8kkMSNi5gAWVee/EKkZbtZnf8UqS+54YN4="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"E aí, qual vai ser o placar de Fluminense x Platense?"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"ACCCA6F0EBA04EAFA08C543B54DC1525","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"Platense 2x0 Flu, platense passa nos pênaltis, Hulk isola "}},"serverQuestionID":37190}},"inviteLinkGroupTypeV2":0,"text":"Que isso..que ódio é esse?"}}}}	\N	\N	f	\N
3EB04A941687F45EC642B4		3	t			16	2026-09-15 13:55:57.387737+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"messageContextInfo":{"messageSecret":"jMVu57PsCwJIfqxzYPtiFXCPljwH9XA1iYqD73HdLHM="},"questionReplyMessage":{"message":{"extendedTextMessage":{"contextInfo":{"questionReplyQuotedMessage":{"quotedQuestion":{"questionMessage":{"message":{"extendedTextMessage":{"contextInfo":{"isQuestion":true},"inviteLinkGroupTypeV2":0,"text":"E aí, qual vai ser o placar de Fluminense x Platense?"}}}},"quotedResponse":{"questionResponseMessage":{"key":{"ID":"3A5A478DB06791C0DB14","fromMe":false,"remoteJID":"120363170942886188@newsletter"},"text":"3x0 fluminense"}},"serverQuestionID":37190}},"inviteLinkGroupTypeV2":0,"text":"Tranquilão, aí sim!"}}}}	\N	\N	f	\N
3EB025B490FB743D512BB8	A MAIS APAIXONADA DO BRASIL? 😱\n\nO jogo é válido pela 3ª rodada da segunda fase da Série C e só vai acontecer no próximo domingo (20), mas a torcida do Santa já garantiu mais de 30 mil ingressos.\n\nOs caras são apaixonados demais!!! 🐍	3	t	image	company1/41e11290e6464fb47bbff3d3-wm_media.jpeg	16	2026-09-15 15:02:29.093628+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/41e11290e6464fb47bbff3d3-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"A MAIS APAIXONADA DO BRASIL? 😱\\n\\nO jogo é válido pela 3ª rodada da segunda fase da Série C e só vai acontecer no próximo domingo (20), mas a torcida do Santa já garantiu mais de 30 mil ingressos.\\n\\nOs caras são apaixonados demais!!! 🐍","directPath":"/m1/v/t24/An832pOdX3pkD5zeWTFdiqt-cPh7ieRF4n3xv6iZ53C_TeW28g4TKWCsw5uyOhH1Glfu3mRL3-VBZqZxQTmf5PRhapE7hpNDs5VF794QgWlFaOxBSF2XZqfTOHRP5g2M2Q?ccb=10-5\\u0026oh=01_Q5Aa5gEF-Nt8MXzo7dmL6uDmDau-xPWBW-1RZlMjtcXqhuEPCw\\u0026oe=6AD0C8C8\\u0026_nc_sid=5e03e0","fileLength":595723,"fileSHA256":"4uJsp7Wk5p66YWX63YxpuToMRQ0V2mxYAk1JBAzvsDI=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An_aAdjkMNL8AWsqsTRR7XGrhF0UPz1tPKLRZOkAQ9zee53cqmPxzdjHY7yfdFbBvkU6MrpVYF4WPnkE9rK-shzZA02aA1M653C8Jk4IdPTUb6zWgeVc1m3oSfEeW4skzNTxNcjbtvr9kSTKYaPYiTSqpw?ccb=10-5\\u0026oh=01_Q5Aa5gE_Zyn14_0_lJAAiGFCtekyu9iSUNZPN1QOkQBeE_Uetg\\u0026oe=6AD0E250\\u0026_nc_sid=5e03e0","thumbnailSHA256":"+UZDDHwE+gPLpp+V7zodMERu7SViG0UkRtjoSNYFiAs=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"OUMWzErXNPgb86aiU49Rfppe44kzRO7lbvjHBDDDP+8="}}	\N	\N	f	\N
AC138C2AAE4820AE9D58F038A84EBB1E	Os sócios interessados negociam com o Fundo de Investimento Público da Arábia Saudita (PIF) a compra do Al Nassr. Além do Cristiano Ronaldo, o proprietário do Milan, Gerry Cardinale, também integra o grupo. Será que vem aí Robôzão dono e jogador????👀👀👀 \n\n🗞️ A Bola	3	t	image	company1/e5371e0878caaa1fe6700f61-wm_media.jpeg	16	2026-09-15 15:20:44.469389+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/e5371e0878caaa1fe6700f61-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAOQMBIgACEQEDEQH/xAAwAAACAwEBAAAAAAAAAAAAAAADBAACBgUBAQEBAQEBAAAAAAAAAAAAAAAAAQIDBP/aAAwDAQACEAMQAAAASpcSrGtp83I17t+TOeNLd89QRxFe9mdDjZaJJeZECj9eOgrUNE0Wd0cqPOZTs9Hag/YLADr8dwEL2A1GES0kPSSFRSHskP/EACcQAAICAgIBAwMFAAAAAAAAAAECAAMEERIhMRAiUQVBYRMVIzJi/9oACAEBAAE/AAu/vLFCnQO4S7NxQbMXFySN8DGUg6I7hRviH0IhmFYEvJ0TFyEKqQp7l+G75Ht6Ux8BePT9y6pkZlbyPRvEYbEw3FFrAjcxHY1bI+8svLFwvlIQLAH5aXzuZT87W02/z6HwIZa3F1I8zCtayoe2ZW6Mjmh8iWXs/XYEY+dejMB5Msu+yTGJa9d9xP4xpR0ZnHVoH4m+9R/TJP8AWA6iHhYrD5i2A8T8iZlnK8zfc5b6mjFw2yU2rAHegIfpVvE+4Q4bKa15jbGLjOib5g6luGxJcuNkb1KsNrePu8y/EOOnNnnOV5tlChVA8z9wyP8AMbJtZkYhdqYudayuCBDl29bVT1rcTLsQLxVepk5b3oEYDr0YzkfmfqtFuO4bTNmb9P/EAB0RAQEAAgEFAAAAAAAAAAAAAAECAAQQAxEwQYH/2gAIAQIBAT8AxcvY6UIVXLl61Vaj9wCZJPRwnfx//8QAGxEAAQUBAQAAAAAAAAAAAAAAAQAQERIxAjD/2gAIAQMBAT8AUKvRwOMV4cGPP//Z","URL":"https://mmg.whatsapp.net/m1/v/t24/An_-8gi0NMPZl-cKkgvbAFsyudN3skknpgSXCWoOD42MIwWceUil3I6bejOYgqxzmAMfCXp87g7SYy0yTA5v5e7wv9cSMsUykV7alJzbB74JxC2-RqGDrvI2VGNDgj-gAw?ccb=10-5\\u0026oh=01_Q5Aa5gHqgnhlpGYHQYKV3c2vT4BbZL0US03NpsMRv5W7hdIkAQ\\u0026oe=6AD0ED10\\u0026_nc_sid=5e03e0\\u0026mms3=true","caption":"Os sócios interessados negociam com o Fundo de Investimento Público da Arábia Saudita (PIF) a compra do Al Nassr. Além do Cristiano Ronaldo, o proprietário do Milan, Gerry Cardinale, também integra o grupo. Será que vem aí Robôzão dono e jogador????👀👀👀 \\n\\n🗞️ A Bola","contextInfo":{"mediaDomainInfo":{"mediaKeyDomain":2},"pairedMediaType":0,"statusSourceType":0},"directPath":"/m1/v/t24/An_-8gi0NMPZl-cKkgvbAFsyudN3skknpgSXCWoOD42MIwWceUil3I6bejOYgqxzmAMfCXp87g7SYy0yTA5v5e7wv9cSMsUykV7alJzbB74JxC2-RqGDrvI2VGNDgj-gAw?ccb=10-5\\u0026oh=01_Q5Aa5gHqgnhlpGYHQYKV3c2vT4BbZL0US03NpsMRv5W7hdIkAQ\\u0026oe=6AD0ED10\\u0026_nc_sid=5e03e0","fileLength":135403,"fileSHA256":"KJ3PsMoaee+7pD2bXDnC85w7GvofrSreY71jpSChs6A=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An8XZAbxktCud116OQ42Kk56T6d_QAeYaRpPxYvl-yeNvgenFstnwtJpG43dJM7_Wa3TCpdd9ZXee8Dz9u9_GHvnaEUE8z4He7MWSWyesrn70XUOo74WmMvGZpHus-xXkUv8ojX0dorRF0g_6rHnS7oKBg?ccb=10-5\\u0026oh=01_Q5Aa5gE6kyT-6y8l0Ucgdt40I_HlaTZukSlzQauabRCHSvRZwA\\u0026oe=6AD0DDFD\\u0026_nc_sid=5e03e0","thumbnailSHA256":"CB3O1Ymxm/vugxIHmEK+3ykawfHt5faZfqIU1PK+0cI=","width":1080}}	\N	\N	f	\N
3EB002CDE1E3052BFA0329	Imagem	3	t	image	company1/b70dc779aff5753490467924-wm_media.jpeg	31	2026-09-15 15:23:01.355736+00	2026-09-15 15:23:01.355736+00	t	f	29	\N	1		{"__mediaURL":"company1/b70dc779aff5753490467924-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","URL":"https://mmg.whatsapp.net/o1/v/t24/f2/m231/AQPzlCMtosu_QvYcyDi0-2SAqJVZ9aDAqNr-qzYyZ1FPWYjOL6z0cmLO0FJ7bMPI4lRxyYMlF5UcxXNXuLRnlGGrr3BPXc35-cj_taKl2w?ccb=9-4\\u0026oh=01_Q5Aa5gExFlU1OVi2Ss3rTBnwu0jLhTMFUZpLlM8KzDiyVnLQAg\\u0026oe=6AD0D2E1\\u0026_nc_sid=e6ed6c\\u0026mms3=true","contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1789397497},"directPath":"/o1/v/t24/f2/m231/AQPzlCMtosu_QvYcyDi0-2SAqJVZ9aDAqNr-qzYyZ1FPWYjOL6z0cmLO0FJ7bMPI4lRxyYMlF5UcxXNXuLRnlGGrr3BPXc35-cj_taKl2w?ccb=9-4\\u0026oh=01_Q5Aa5gExFlU1OVi2Ss3rTBnwu0jLhTMFUZpLlM8KzDiyVnLQAg\\u0026oe=6AD0D2E1\\u0026_nc_sid=e6ed6c","fileEncSHA256":"kM2S0jUJskWgWv/9rUSQHkuD84aKGCcf37Ri5HKQOoM=","fileLength":291400,"fileSHA256":"NFRX7naED6SZYW1ltp6JAfj9uUh7+XKafC+K2F5wYoA=","height":1207,"mediaKey":"HZw/LFqQU4S9sQfb1T8gO2H+4rdptg+6ljSK9mRQDfI=","mediaKeyTimestamp":1789485776,"mimetype":"image/jpeg","viewOnce":false,"width":1600},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"nAWHgRDySDTZug==","recipientTimestamp":1789480091,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"xQUTkwGYmkKqO5rvw3GpWVBjnQLuN+vrx1Fd+1+cWX0="}}	\N	\N	f	\N
3EB07D669318E97A51108E	972549926556	3	t			34	2026-09-15 15:24:39.307336+00	2026-09-15 15:24:39.307336+00	t	f	20	\N	1		{"conversation":"972549926556","messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"0vo41jj71yqZgGA9Jt9HvCaE6ZB1D6ffmHSiVgKTAQc="}}	\N	\N	f	\N
3EB001C32B6770C3DE4AA7	+972549926556	3	t			34	2026-09-15 15:24:49.120343+00	2026-09-15 15:24:49.120343+00	t	f	20	\N	1		{"conversation":"+972549926556","messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"rsXH+XmdCm10oE0Qlr6n2vsvQGbT8MjsA8WVp3xqxKA="}}	\N	\N	f	\N
3EB0CACD0E86526BFDDBB8	A BOLA JÁ TÁ ROLANDO NO BRASILEIRÃO NA CAZÉTV! 🔥\n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	url		16	2026-08-30 00:22:33.315104+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Vasco da Gama x Cruzeiro AO VIVO E COM IMAGENS pela 25ª rodada do B...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/46t2Rci","previewType":0,"text":"A BOLA JÁ TÁ ROLANDO NO BRASILEIRÃO NA CAZÉTV! 🔥\\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","thumbnailDirectPath":"/m1/v/t24/An9iWedmXJ8ianxSB1J9e4P2acbOMJinUEha03wQkQ_9AnRyLl9MeyLs83xze3cmZCYcoSddyR4-zxZ5yRVHshiQ8yff51o-MZHsVmeytJvKW3QT1IXpjQsGFeSaq88YKr_ffNiEQBKQd2I0tLMJnCEkdQ?ccb=10-5\\u0026oh=01_Q5Aa5QGw4Y0iTs_xDFLKplq64iZaWw-JaeFuGFftj8IX1Sr1Xg\\u0026oe=6ABABC30\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"pA+609+O1zyPjQO/ThiU59khnL1+jAImdM0m7//jYhY=","thumbnailWidth":1280,"title":"AO VIVO: VASCO X CRUZEIRO | BRASILEIRÃO 2026 | 25ª RODADA"},"messageContextInfo":{"messageSecret":"P8iR0amY893jyfjX8yPtj7ysdphyiECj4PeDrabqwMI="}}	\N	\N	f	\N
3EB01441E09215CA4835D9	OsherMayli?	3	t			35	2026-09-15 15:25:20.214125+00	2026-09-15 15:28:26.521409+00	t	f	32	\N	1		{"conversation":"OsherMayli?","messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"8OKa2lS3feQUcA==","recipientTimestamp":1789226665,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"90vbE9qZfRu8pCsTS0a9X0fLXVLxD9e7mtgVrSL8T1Y="}}	\N	\N	f	\N
3A0645AA9F6D79106F27	Yes bro	3	t			35	2026-09-15 15:26:03.622541+00	2026-09-15 15:28:26.521409+00	f	f	32	\N	1		{"conversation":"Yes bro","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"8OKa2lS3feQUcA==","senderTimestamp":1789226665},"deviceListMetadataVersion":2,"messageSecret":"xNulham7AAWNyNloppOUGGEXdg5H+21HGsd/svdwLLU="},"push_name":"אושר מיילי"}	\N	\N	f	\N
3EB04656E171D76E0002D1	Tem time brasileiro decidindo a Libertadores e você já sabe: é emoção do início ao fim. E com Amstel, todas as emoções estão em jogo!\nDe 16 a 20 de setembro, na Orla de Botafogo, Amstel convoca a torcida para viver toda essa emoção de perto no Conmebol Libertadores Experience.\n\nEntão se cadastre, garanta sua vaga e venha viver a Libertadores com a gente!\nAmstel. \n\nTodas as emoções em jogo. Beba com moderação.\n\n🔗 https://libertadoresexperience.com/app	3	t	url		16	2026-09-15 14:00:43.407268+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"description":"Credenciamento, localização e registro da experiência do torcedor — CONMEBOL Libertadores Experience, Praia de Botafogo, Rio de Janeiro.","inviteLinkGroupTypeV2":0,"matchedText":"https://libertadoresexperience.com/app","previewType":0,"text":"Tem time brasileiro decidindo a Libertadores e você já sabe: é emoção do início ao fim. E com Amstel, todas as emoções estão em jogo!\\nDe 16 a 20 de setembro, na Orla de Botafogo, Amstel convoca a torcida para viver toda essa emoção de perto no Conmebol Libertadores Experience.\\n\\nEntão se cadastre, garanta sua vaga e venha viver a Libertadores com a gente!\\nAmstel. \\n\\nTodas as emoções em jogo. Beba com moderação.\\n\\n🔗 https://libertadoresexperience.com/app","title":"Libertadores Pass"},"messageContextInfo":{"messageSecret":"9xHK5SGlUyrE5F6YJf5cYWuYeHdawa6i/XCbpFBbn2U="}}	\N	\N	f	\N
3EB02B0BF65DC679BA9E73	Hi brother	3	t			35	2026-09-15 15:24:58.971636+00	2026-09-15 15:28:26.521409+00	t	f	32	\N	1		{"conversation":"Hi brother","messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"8OKa2lS3feQUcA==","recipientTimestamp":1789226665,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"dER0DKsY/TP7we7eV0gR8VXaoaV2Dh7G2UAY0G3iGE0="}}	\N	\N	f	\N
3EB0ECA857D5E636612D3C	Para que eu possa te ajudar, preciso do seu CPF.	1	t			35	2026-09-15 15:26:29.74626+00	2026-09-15 15:28:26.521409+00	t	f	32	\N	1			\N	\N	f	\N
AC16E3295101D9D3C588554F7793D846	Oi	3	t			33	2026-09-15 14:03:51.31465+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Oi","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"AyMf7y6CDmfSFKfgLIkSMDBVBbcYgwFO/cxT4t8CxOo="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB0F02D5BA13CD381F2F3	Você está na central de relacionamento. Conte-nos como podemos te ajudar a melhorar sua experiência.	1	t			33	2026-09-15 14:03:51.57793+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1			\N	\N	f	\N
3EB075D9A98862FBB490C6	fans	3	t			33	2026-09-15 14:04:00.044944+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"fans"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"wrB5HyL3tCGSfYsDrXnZLxjuMGXysh/Avco80Kk32LM="}}	\N	\N	f	\N
2AAC4C1D90112C65D5BF	Wait, my inteliggence IA is active	3	t			35	2026-09-15 15:27:02.654823+00	2026-09-15 15:28:26.521409+00	t	f	32	\N	1		{"conversation":"Wait, my inteliggence IA is active","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"8OKa2lS3feQUcA==","recipientTimestamp":1789226665,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"AzKcgYSX++L5Q1byJX/fCCFwNnXH1PlCqoVZ0Mdxj1E="}}	\N	\N	f	\N
3EB035D1D80E2CB410D75B	Entendi. Se precisar de algo, é só avisar.	1	t			35	2026-09-15 15:27:46.265546+00	2026-09-15 15:28:26.521409+00	t	f	32	\N	1			\N	\N	f	\N
3AD791B30335CEB3E9AF	Mais duas horas, ok?	3	t			35	2026-09-15 15:27:23.097762+00	2026-09-15 15:28:26.521409+00	f	f	32	\N	1		{"conversation":"Mais duas horas, ok?","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"8OKa2lS3feQUcA==","senderTimestamp":1789226665},"deviceListMetadataVersion":2,"messageSecret":"k2Do23RkzsAdk/YCRovLQM6h7iTMOeQLixO8tidn7sw="},"push_name":"אושר מיילי"}	\N	\N	f	\N
3A6E38BECC633A2A5701	Porque estou com uma criança.	3	t			35	2026-09-15 15:27:41.220638+00	2026-09-15 15:28:26.521409+00	f	f	32	\N	1		{"conversation":"Porque estou com uma criança.","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"8OKa2lS3feQUcA==","senderTimestamp":1789226665},"deviceListMetadataVersion":2,"messageSecret":"1PHdTbmP15cyJr9h4JQAIs9s5w1ZZHPxg+hmHJtn1eg="},"push_name":"אושר מיילי"}	\N	\N	f	\N
3EB0B9724300A1CCA52005	oli	3	t			33	2026-09-15 14:03:57.777799+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiatedByMe":true,"initiator":0,"trigger":1},"ephemeralSettingTimestamp":1787774278},"inviteLinkGroupTypeV2":0,"text":"oli"},"messageContextInfo":{"deviceListMetadata":{"receiverAccountType":0,"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderAccountType":0,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"limitSharingV2":{"initiatedByMe":false,"trigger":0},"messageSecret":"ZQC7s5yvRgXT82jiRYeL3B1AXdWDygvREZNqqcAD4Aw="}}	\N	\N	f	\N
3A01F99CBF48526BC81E	Ok bro	3	t			35	2026-09-15 15:28:00.729271+00	2026-09-15 15:28:26.521409+00	f	f	32	\N	1		{"conversation":"Ok bro","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"8OKa2lS3feQUcA==","senderTimestamp":1789226665},"deviceListMetadataVersion":2,"messageSecret":"uIP33oyqkRQeovCOYQng2xEYOWDyeN484EAubqx+EUU="},"push_name":"אושר מיילי"}	\N	\N	f	\N
2A5CE8638C48AC943BE4	Deixa o notebook ligado	3	t			33	2026-09-15 13:37:39.707716+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0},"text":"Deixa o notebook ligado"},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"r32bLHYLohTc/sVps0EZ34FkOH/kVqL9xeiuDmRlxkA="}}	\N	\N	f	\N
3EB04AF235E3EA7F92939B	O QUE O OTÁVIO FEZ AGORA É LOUCURA, QUE DEFESA! 😱😱😱😱 \n\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \n\n🔗 https://bit.ly/46t2Rci	3	t	url		16	2026-08-30 00:38:23.269531+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"extendedTextMessage":{"JPEGThumbnail":"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","description":"Vasco da Gama x Cruzeiro AO VIVO E COM IMAGENS pela 25ª rodada do B...","inviteLinkGroupTypeV2":0,"matchedText":"https://bit.ly/46t2Rci","previewType":0,"text":"O QUE O OTÁVIO FEZ AGORA É LOUCURA, QUE DEFESA! 😱😱😱😱 \\n\\nESTAMOS AO VIVO PARA VASCO 💢 X 🦊 CRUZEIRO! \\n\\n🔗 https://bit.ly/46t2Rci","thumbnailDirectPath":"/m1/v/t24/An9iWedmXJ8ianxSB1J9e4P2acbOMJinUEha03wQkQ_9AnRyLl9MeyLs83xze3cmZCYcoSddyR4-zxZ5yRVHshiQ8yff51o-MZHsVmeytJvKW3QT1IXpjQsGFeSaq88YKr_ffNiEQBKQd2I0tLMJnCEkdQ?ccb=10-5\\u0026oh=01_Q5Aa5QGw4Y0iTs_xDFLKplq64iZaWw-JaeFuGFftj8IX1Sr1Xg\\u0026oe=6ABABC30\\u0026_nc_sid=5e03e0","thumbnailHeight":720,"thumbnailSHA256":"pA+609+O1zyPjQO/ThiU59khnL1+jAImdM0m7//jYhY=","thumbnailWidth":1280,"title":"AO VIVO: VASCO X CRUZEIRO | BRASILEIRÃO 2026 | 25ª RODADA"},"messageContextInfo":{"messageSecret":"VENueNSjFWPr/5UfP2ns45qedloZ7FxniGxmAFpWPJw="}}	\N	\N	f	\N
AC61D26B0AE4A6AA0C408F2ECDA896FC	Hj vai tá o Márcio	3	t			33	2026-09-15 14:05:21.792909+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Hj vai tá o Márcio","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"wnv+XVLryl5QWX6PXP+5NhaSzNc2XqtDd4uZfgnfiSM="},"push_name":"Rogério M."}	\N	\N	f	\N
AC0244F8B57F7C87891FBB37851479AB	Online ?	3	t			33	2026-09-15 13:37:37.376033+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Online ?","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"XvBnSECiR/7akbULKEvuLZcnsswUdRT3yA6kpXbKSPw="},"push_name":"Rogério M."}	\N	\N	f	\N
AC33F5A7D1BB9B84A21CDA01E1B6D28F	Figurinha	3	t	sticker	company1/8145de88e2585c22040c9d6a-wm_media.webp	33	2026-09-15 14:04:25.326722+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/8145de88e2585c22040c9d6a-wm_media.webp","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"wkiqCUc9dnENTiNPRNI9/S08lKUnb/tMkB5aAl86nEE="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107","stickerMessage":{"URL":"https://mmg.whatsapp.net/v/t62.15575-24/664963282_2146762279240826_2507955739548954380_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGYcvME0v69iF6MT1SBUJEtD5BanCcWeSOa92TTBqlLBg\\u0026oe=6AD0CA35\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"RLuOwJs5j7e64t6sTCI0eUz1b3+UFzjdYD0C5/V8wC0=","mediaKeyDomain":1}},"directPath":"/v/t62.15575-24/664963282_2146762279240826_2507955739548954380_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGYcvME0v69iF6MT1SBUJEtD5BanCcWeSOa92TTBqlLBg\\u0026oe=6AD0CA35\\u0026_nc_sid=5e03e0","fileEncSHA256":"YCQjBBILSbQJ+cCwwRVTYoP35TJhxWmzr5HIwoVqW+o=","fileLength":110386,"fileSHA256":"Q/XqbAFwHEd4EXMORjmfqXYql+tV5SSjuikI9LiNu4A=","firstFrameLength":3624,"firstFrameSidecar":"kqL+oNoqym85ew==","isAiSticker":false,"isAnimated":true,"isAvatar":false,"isLottie":false,"mediaKey":"RLuOwJs5j7e64t6sTCI0eUz1b3+UFzjdYD0C5/V8wC0=","mediaKeyTimestamp":1708909566244,"mimetype":"image/webp","premium":0,"stickerSentTS":1789481064295}}	\N	\N	f	\N
2AD203C1DB5488DBE546	Acabei de acordar	3	t			33	2026-09-15 13:37:38.283498+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0},"text":"Acabei de acordar"},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"QTg3uTkEw0NbsoMo3SsQdUeswkwCEGYBORggQhMm7zc="}}	\N	\N	f	\N
ACF2436C1688D544310F512EE3B477C4	Mano no documento ainda não	3	t			33	2026-09-15 14:06:16.005746+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"participant":"79530731511820@lid","quotedMessage":{"conversation":"*Admin*\\nsim sim, entendo.\\n\\nOque a gente vai fazer referente a leitura irmão? precisamos voltar pro trampo."},"quotedType":0,"stanzaID":"3EB0E1C0381B9C9BA6145D"},"inviteLinkGroupTypeV2":0,"previewType":0,"text":"Mano no documento ainda não"},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"LZLVZbb4L1gdiIsKG9uDJXwruP6Fp/QspCBkJ7fkGq0="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
AC252D9F03DD3FC65E46DE0A38B43DDB	Áudio	3	t	audio	company1/4cd8ce4604db9c3570f71cef-wm_media.ogg	33	2026-09-15 13:37:42.080798+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/4cd8ce4604db9c3570f71cef-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/598752225_1801774181137755_4556080285497335850_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGrI-PmqqjlwBYMwZGT48z1575e51w5VQ6dimXGSZ2bLA\\u0026oe=6AD0A397\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"ERQXLOpa4K+gNtgSWKsLo1L6d8WtxMUG8fE2s/GXMsA=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/598752225_1801774181137755_4556080285497335850_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGrI-PmqqjlwBYMwZGT48z1575e51w5VQ6dimXGSZ2bLA\\u0026oe=6AD0A397\\u0026_nc_sid=5e03e0","fileEncSHA256":"EKTX64LFKzdO0HLEGVO1J/WeYKyvUv9k4lp/foGgDhI=","fileLength":9767,"fileSHA256":"YolyWO7gtB83nWIK3L7Zq/OeyPWJy3sLAwYBWyhY3nI=","mediaKey":"ERQXLOpa4K+gNtgSWKsLo1L6d8WtxMUG8fE2s/GXMsA=","mediaKeyTimestamp":1789477323,"mimetype":"audio/ogg; codecs=opus","seconds":4,"waveform":"AAAMQVhjYVhfUWJKU09LWFJAODZaWVdYSSEBDEouWUo3TyZJFk1VNT9ZVFVJOUhGSVVTQzVRVFBYV1A4AwAAAA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"SPjWVbLmEH/vqpnmVUf5JQ2lm+bHvYpQn+Y7FNlNVsU="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
ACA4C13A4E69081C625494D0BAE13B55	Então temos que ser preciso	3	t			33	2026-09-15 14:05:26.764026+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"conversation":"Então temos que ser preciso","messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"9PCTljtLKX0A5py1Lfug7IRbZvigeloVSAIvlYaQ9sI="},"push_name":"Rogério M."}	\N	\N	f	\N
AC4DEA7F4C654710E54131036DEE629E	Áudio	3	t	audio	company1/6f5b93406696db3ca55d4587-wm_media.ogg	33	2026-09-15 13:39:49.153299+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/6f5b93406696db3ca55d4587-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/595765089_2025918158810874_8387132132285445593_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEqlG4h7uOoxrzvWRE-HJFRO34YC2MQ1_swJVWi73oSiQ\\u0026oe=6AD0BBD2\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"VKMOSSBYo856CcEELJg0p28DmYBixPdBKCbbYJotV0k=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/595765089_2025918158810874_8387132132285445593_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEqlG4h7uOoxrzvWRE-HJFRO34YC2MQ1_swJVWi73oSiQ\\u0026oe=6AD0BBD2\\u0026_nc_sid=5e03e0","fileEncSHA256":"+u1yzXkW2rkSMWgfCORCJc/8PFPGBYbCOIbvUCaz+Ao=","fileLength":10409,"fileSHA256":"S+nFFHdQdKPD8lcSk0Cwx4eRRh90YbZipqQ/Ugmln2c=","mediaKey":"VKMOSSBYo856CcEELJg0p28DmYBixPdBKCbbYJotV0k=","mediaKeyTimestamp":1789479585,"mimetype":"audio/ogg; codecs=opus","seconds":4,"waveform":"AAAAAAAAARBHTmJfW2JUX1VbVVJSW1c5IAoICQsECjZaGDpZLT87V1hUNEo9CwQHBQ0ECQIHPVhSS0hYU1g9Dg=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"LDUimIt3oGJPSTxhCXjqFDHQiFjeII3iXxUcUWW7KP0="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
ACA53C6251EED7A98CA195CA122D14E8	Áudio	3	t	audio	company1/16d01e4f8fcdbcb9af0e985e-wm_media.ogg	33	2026-09-15 13:37:42.094755+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/16d01e4f8fcdbcb9af0e985e-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/794126666_2608044606316578_4186711758720167369_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFLJyxEn__UFDQ6NXdAvP4hTeH859G64oyyhziLx5jjiw\\u0026oe=6AD0ACD8\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"icz93ncRDI5J3yfu1BEMPaAMzCWGBbf6EUp3EQsVO+w=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/794126666_2608044606316578_4186711758720167369_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFLJyxEn__UFDQ6NXdAvP4hTeH859G64oyyhziLx5jjiw\\u0026oe=6AD0ACD8\\u0026_nc_sid=5e03e0","fileEncSHA256":"vWIc50extbloRUzrivnw/QbNSsYyLVMTO70iatV3SW0=","fileLength":16099,"fileSHA256":"XgoDam4dGFZ1i3etTbtbizUS3F7EKpGe0EZB4ntlxGk=","mediaKey":"icz93ncRDI5J3yfu1BEMPaAMzCWGBbf6EUp3EQsVO+w=","mediaKeyTimestamp":1789477453,"mimetype":"audio/ogg; codecs=opus","seconds":6,"waveform":"AAEhNUw4XVVgQlFcVD9YWFItBwQFAEVbWkpPUj44JE5dRUdXWTdUNUdORT5WRD9YSkpAAwITAFlGVUhZOy8hUQ=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"4+ZenmDMQgPxuMkCL+EMlOASIw8hY/0wFMf2oUkqe5I="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
AC7F9E9D902E4C3FB1C0D97D2F4492D1	Áudio	3	t	audio	company1/29766a027bf825b8412cf5e4-wm_media.ogg	33	2026-09-15 13:37:42.027389+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/29766a027bf825b8412cf5e4-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/594455918_2218078692088299_2937501247293420910_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFZapxSvm0ZzBuHJ4ic4RGbfZZ4TZSUNNKrijSzCLZGLQ\\u0026oe=6AD0BE1D\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"IZFbxd2k2u6VFzfV5n9yFHKgXbDmDeQz5tUYTkccaw0=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/594455918_2218078692088299_2937501247293420910_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFZapxSvm0ZzBuHJ4ic4RGbfZZ4TZSUNNKrijSzCLZGLQ\\u0026oe=6AD0BE1D\\u0026_nc_sid=5e03e0","fileEncSHA256":"FaBopzS1WTIGR23ukqrVDm8WznDKgZB12ORAteYbacQ=","fileLength":25235,"fileSHA256":"t6W5cXbJbAyFkeml+OhGPOUhjX4Diu9em/31g8G5jSo=","mediaKey":"IZFbxd2k2u6VFzfV5n9yFHKgXbDmDeQz5tUYTkccaw0=","mediaKeyTimestamp":1789477367,"mimetype":"audio/ogg; codecs=opus","seconds":10,"waveform":"AAAAACxaVlhSPTw1IFcoEVEZTitLRg1MW0sMTU9NU042U0cePlg7E0AzU1M4ADUSPEtAUQEAACMALT5JPkg9AA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"OpRMtkgpMk40YAWq430TBiC5YqVhL6VGMzBUoaAjekc="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
2ADEEA883BFA8BA7A2E6	10:30 ? Vamos call kkkk	3	t			33	2026-09-15 13:37:38.080234+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"extendedTextMessage":{"contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0,"participant":"149838658277476@lid","quotedMessage":{"audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/598752225_1801774181137755_4556080285497335850_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGrI-PmqqjlwBYMwZGT48z1575e51w5VQ6dimXGSZ2bLA\\u0026oe=6AD0A397\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"disappearingMode":{"initiator":0}},"directPath":"/v/t62.7117-24/598752225_1801774181137755_4556080285497335850_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gGrI-PmqqjlwBYMwZGT48z1575e51w5VQ6dimXGSZ2bLA\\u0026oe=6AD0A397\\u0026_nc_sid=5e03e0","fileEncSHA256":"EKTX64LFKzdO0HLEGVO1J/WeYKyvUv9k4lp/foGgDhI=","fileLength":9767,"fileSHA256":"YolyWO7gtB83nWIK3L7Zq/OeyPWJy3sLAwYBWyhY3nI=","mediaKey":"ERQXLOpa4K+gNtgSWKsLo1L6d8WtxMUG8fE2s/GXMsA=","mediaKeyTimestamp":1789477323,"mimetype":"audio/ogg; codecs=opus","seconds":4,"waveform":"AAAMQVhjYVhfUWJKU09LWFJAODZaWVdYSSEBDEouWUo3TyZJFk1VNT9ZVFVJOEhGSVVTQzVRVFBYV1A4AwAAAA=="}},"quotedType":0,"stanzaID":"AC252D9F03DD3FC65E46DE0A38B43DDB"},"text":"10:30 ? Vamos call kkkk"},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"h13z5dkh47p3TF3k/4CZMbt4+KX8MB5uOGhlvrkpk/0="}}	\N	\N	f	\N
2ADB4B339C75B7076EF0	Áudio	3	t	audio	company1/81e6bf27cf02278e511d9e40-wm_media.ogg	33	2026-09-15 13:37:41.994016+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"__mediaURL":"company1/81e6bf27cf02278e511d9e40-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/612756102_1327790815913834_2036610403929928854_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEchOMTr6bEMaVJ3kTdE5neAOHuFjap0QC3yQ8FxUuIVQ\\u0026oe=6AD0C2E4\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0},"directPath":"/v/t62.7117-24/612756102_1327790815913834_2036610403929928854_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEchOMTr6bEMaVJ3kTdE5neAOHuFjap0QC3yQ8FxUuIVQ\\u0026oe=6AD0C2E4\\u0026_nc_sid=5e03e0","fileEncSHA256":"u4sPG/mvRhZqImrV56SYFZHVn7CSMLG8HnlyDvgHqJ0=","fileLength":15765,"fileSHA256":"ftvIwrpXdIFrbaZ0hQlaKpBZd8HsnknyjViUX5+V0NQ=","mediaKey":"xrMOnyy7vt0FVJr7K5JF48Xg1IpGVXQ+h7gsdBhb7nI=","mediaKeyTimestamp":1789477372,"mimetype":"audio/ogg; codecs=opus","seconds":6,"streamingSidecar":"wMO9BB+jl0IGug==","waveform":"AAAAACdJSUA3SE1JQjw3PkVBQ0ZFNhsOBQIaNDlFUDwxMDxGSUZCRjspPT0lFAcDAQcxPDI1OUJDQ0ZKTkc3IQ=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"gCl8j4feuIFhTRWP6u/MLwqSbr1z49aTM7kC+hTz4yY="}}	\N	\N	f	\N
2AF2600FA7AB082FE72F	Áudio	3	t	audio	company1/7787ebafc9b910ede30b89e5-wm_media.ogg	33	2026-09-15 13:37:42.042509+00	2026-09-15 18:48:17.388641+00	t	f	1	\N	1		{"__mediaURL":"company1/7787ebafc9b910ede30b89e5-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/811268090_1050843101272009_6013300884026587713_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHJxS6_Uc5-lIUuOeRwKd2UbWyx32N1K1f-5EaLGpwg1g\\u0026oe=6AD0972B\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"disappearingMode":{"initiator":0},"ephemeralSettingTimestamp":1787774278,"expiration":0},"directPath":"/v/t62.7117-24/811268090_1050843101272009_6013300884026587713_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHJxS6_Uc5-lIUuOeRwKd2UbWyx32N1K1f-5EaLGpwg1g\\u0026oe=6AD0972B\\u0026_nc_sid=5e03e0","fileEncSHA256":"2vaPy4pO75Q63oXlM+l3RH0jit64+VmlAf2hGHlMK24=","fileLength":13924,"fileSHA256":"gVL2OemGdKpqe2NEjRZBjYzjUDX4MUlDf2YtIsRLmrU=","mediaKey":"reR6Orp7CC2CryYUV0yD+Hds7YukS/5uiVl7HGltFqA=","mediaKeyTimestamp":1789477392,"mimetype":"audio/ogg; codecs=opus","seconds":5,"streamingSidecar":"gaj0TH2eKn/aCw==","waveform":"AAAAAAAAAA0wODY+PzU7RUVJUEQ3S1VQSkM7NC8/T0VDSEVDQ0NDNCo4RlBRUE9MSVBUSkI8PjgiEgYDAAAAAA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"Y1Ba5OXv0KSZ7w==","recipientTimestamp":1789143493,"senderKeyHash":"rdXO/wmYtetZ1w==","senderTimestamp":1789425359},"deviceListMetadataVersion":2,"messageSecret":"9M5rgKvCFeqsZLOFzAPYSkmj/jNPN1EHzWVs6bNqps4="}}	\N	\N	f	\N
AC42A541617F25773B8E3D64ADAF9AA8	Áudio	3	t	audio	company1/b4d6da9aa3bfa83307397cdb-wm_media.ogg	33	2026-09-15 13:37:41.979522+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/b4d6da9aa3bfa83307397cdb-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/793989049_1391388902558270_7166720663143007206_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFNS66PcaFs9-gdh1WQ1LS8gFFztdGr1vhz8uGEY-0NrQ\\u0026oe=6AD0B3C9\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"ada3R9EMxD/EopCDBrM6B1CZ3FwAY8RUNqHIZuk4WrY=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/793989049_1391388902558270_7166720663143007206_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gFNS66PcaFs9-gdh1WQ1LS8gFFztdGr1vhz8uGEY-0NrQ\\u0026oe=6AD0B3C9\\u0026_nc_sid=5e03e0","fileEncSHA256":"FHABRQ+1WMJQzgHAPxkA8exF4hJLT6VfS6UEavDemVk=","fileLength":10498,"fileSHA256":"3p+IhuMAUtFKtzNkVcJkNISxcwEfHaF7KK4jlYXYWjw=","mediaKey":"ada3R9EMxD/EopCDBrM6B1CZ3FwAY8RUNqHIZuk4WrY=","mediaKeyTimestamp":1789477447,"mimetype":"audio/ogg; codecs=opus","seconds":4,"waveform":"AAZGYVJcNCk9XUxSPDA1LDZUVVFLSU8oJFpaVFdPVEMrOlhUQ0IiNFdLMCU3Uz5NUEY4PlJLKhUwRFVGOjIuCQ=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"9l2nUYSubocAXTJi7E8CTS7EMu8fhcB2AI2iPTdzaS4="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
ACF5E96A2E2C471FFC4B7187AB4DE20E	Áudio	3	t	audio	company1/c65ef5de52ba4de58c155f47-wm_media.ogg	33	2026-09-15 13:37:42.009545+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/c65ef5de52ba4de58c155f47-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/689858805_1364825955721629_1662766701849750352_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHDRC0mkrGAyCtmcQQZZNZ0ggRkFEAVwz9FX0rivlvq3w\\u0026oe=6AD0A640\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"hd5345TORyMqY1/GPj8yuf6kRapC5WzQlA4+tR8dIHI=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/689858805_1364825955721629_1662766701849750352_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gHDRC0mkrGAyCtmcQQZZNZ0ggRkFEAVwz9FX0rivlvq3w\\u0026oe=6AD0A640\\u0026_nc_sid=5e03e0","fileEncSHA256":"rclQzTHV34kWZSMb9g+ctnMpCf0GVBofMQanL9FvttQ=","fileLength":15529,"fileSHA256":"yhyvO10u+1PI1Oa0BAffvEbhCehehZND77f8j6G272E=","mediaKey":"hd5345TORyMqY1/GPj8yuf6kRapC5WzQlA4+tR8dIHI=","mediaKeyTimestamp":1789477495,"mimetype":"audio/ogg; codecs=opus","seconds":6,"waveform":"AAAqSGNJX1FbUi0YWTIAAAxdHllFFkQ4JktFMlJCTzRVWz1PRSgAACkmGTksCQAAAAMAAAAbWlZXQExWRTxXJA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"39AtzdP3o2AkNSNy+YxRLYss92lEQWxiWspkuav8GvM="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
AC9F12D8163073D790CDE4C8CE6BD4EF	Áudio	3	t	audio	company1/f73c5094ec0fedb2e6c94730-wm_media.ogg	33	2026-09-15 13:37:42.058474+00	2026-09-15 18:48:17.388641+00	f	f	1	\N	1		{"__mediaURL":"company1/f73c5094ec0fedb2e6c94730-wm_media.ogg","audioMessage":{"PTT":true,"URL":"https://mmg.whatsapp.net/v/t62.7117-24/810184384_1802785344769987_212463687669240224_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEiCusMcBNt6yFplwTSYKXBz0CyjbXaEuTmq11BnjawFA\\u0026oe=6AD0A7CD\\u0026_nc_sid=5e03e0\\u0026mms3=true","contextInfo":{"mediaDomainInfo":{"e2EeMediaKey":"tGeXH72Y0sJzTWzzhqEYIiOoBPf0/6tp2vz2vg8f+cw=","mediaKeyDomain":1}},"directPath":"/v/t62.7117-24/810184384_1802785344769987_212463687669240224_n.enc?ccb=11-4\\u0026oh=01_Q5Aa5gEiCusMcBNt6yFplwTSYKXBz0CyjbXaEuTmq11BnjawFA\\u0026oe=6AD0A7CD\\u0026_nc_sid=5e03e0","fileEncSHA256":"6fCdVPh2Xk1xImXSylS4AfGAw3vxX1WN4htbjyFP8GA=","fileLength":12747,"fileSHA256":"ek7YpiuVKl0iHFO/PAEr4lVsjeWvxCbMt2y+dhGT/7Q=","mediaKey":"tGeXH72Y0sJzTWzzhqEYIiOoBPf0/6tp2vz2vg8f+cw=","mediaKeyTimestamp":1789477359,"mimetype":"audio/ogg; codecs=opus","seconds":5,"waveform":"AAAFE1JfVmFLVl1QSB8EAAA4VFtdXVxYVkgwEgEACgIAC1pXQVBFSlpFOkZCS00oTFhQUlVOPjsuCAAAAAAAAA=="},"messageContextInfo":{"deviceListMetadata":{"recipientKeyHash":"rdXO/wmYtetZ1w==","recipientTimestamp":1789425359,"senderKeyHash":"Y1Ba5OXv0KSZ7w==","senderTimestamp":1789143493},"deviceListMetadataVersion":2,"messageSecret":"bNJ2KynNzW6n3bemZzPMXw0A7m8+lTuaIwmn7FuMSR0="},"push_name":"Rogério M.","sender_pic_url":"https://pps.whatsapp.net/v/t61.24694-24/616830642_2176704842921701_8335279926564585465_n.jpg?ccb=11-4\\u0026oh=01_Q5Aa5gGpgFSZ_W2p3cr_h56W0ZlMo68vKC3Ps4mhSs-n1PvcKA\\u0026oe=6AB6431A\\u0026_nc_sid=5e03e0\\u0026_nc_cat=107"}	\N	\N	f	\N
3EB0931E71D6BB7B39C738	TCHÊ TCHÊ CRAVOUUUUUUU! 💢⚽	3	t			16	2026-08-30 00:54:31.453555+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"conversation":"TCHÊ TCHÊ CRAVOUUUUUUU! 💢⚽","messageContextInfo":{"messageSecret":"aZBLm8ITTCi+ZdpepMqwI2dbGZO0FqAdulksezS6Ui8="}}	\N	\N	f	\N
3EB0A4559FE35F66709A6B	GOOOLLL! TCHÊ TCHÊ ABRE O PLACAR PRO VASCO!\n\nO CRUZEIRO RECLAMOU MUITO DE FALTA, MAS É GOL! TCHÊ TCHÊ ROUBOU A BOLA E CRAVOU!	3	t	image	company1/881cc67735b84483e1b5a0d6-wm_media.jpeg	16	2026-08-30 00:57:41.208172+00	2026-09-15 21:19:05.252398+00	f	f	26	\N	1		{"__mediaURL":"company1/881cc67735b84483e1b5a0d6-wm_media.jpeg","imageMessage":{"JPEGThumbnail":"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","caption":"GOOOLLL! TCHÊ TCHÊ ABRE O PLACAR PRO VASCO!\\n\\nO CRUZEIRO RECLAMOU MUITO DE FALTA, MAS É GOL! TCHÊ TCHÊ ROUBOU A BOLA E CRAVOU!","directPath":"/m1/v/t24/An_8z2bM_uTioyo_wlpN9RHZmhpBxvdF7SJ_S_NUnnsyOQhjaAuweewI-19SfMIpDQoStZP16BmmG_IS20mA-JxZT2r-JwBJhkbArd3ssPvn7Svm5E3IEDKIqSc7UzGCdw?ccb=10-5\\u0026oh=01_Q5Aa5QGd4QGutccC2XN98q_0iyDmPQdFUg8g5AQcb_aDFmTRnw\\u0026oe=6ABADE4E\\u0026_nc_sid=5e03e0","fileLength":183941,"fileSHA256":"7C891EQUnpE4IiX2U0AXY+ydxMwoxcDk7sswcEf+8Bk=","height":1350,"mimetype":"image/jpeg","thumbnailDirectPath":"/m1/v/t24/An-uweK8VvuWUMgtOEmoSU6aNPzyKjE7_Kll9Et_uVKxXzMHXX-jYqynNp86uQNGmXst5MaSLxlDgPQ-34xv99Mv2gu28BTF5H04dx-a3WplB9m17cnHgwEfcxv69FvzcZA4XGahqVmQ7SpXbL4atjzaSw?ccb=10-5\\u0026oh=01_Q5Aa5QG0U7c2uUf43t32BLCM5fURS7k_t-2tnIWe1NlJuAAvHg\\u0026oe=6ABAE3B2\\u0026_nc_sid=5e03e0","thumbnailSHA256":"TrivU4Yd+/mYrdGG2gmJem1ZooIp2EvdwwDzm7AnYeA=","viewOnce":false,"width":1080},"messageContextInfo":{"messageSecret":"iMIr+ApxAb4e9eVnJBmdUX0m9KNqNDuP42ZWgBzVrMU="}}	\N	\N	f	\N
\.


--
-- Data for Name: MsgTelegram; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."MsgTelegram" (id, "chatId", message, "messageType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: OfficialCampaignShipping; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."OfficialCampaignShipping" (id, "officialCampaignId", "contactId", status, "messageId", attempt, error, "createdAt", "updatedAt", "sentAt") FROM stdin;
\.


--
-- Data for Name: OfficialCampaignShippings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."OfficialCampaignShippings" (id, "officialCampaignId", "contactId", status, attempt, error, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: OfficialCampaigns; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."OfficialCampaigns" (id, name, "companyId", "whatsappId", "contactListId", "whatsappTemplateId", status, "scheduledAt", "completedAt", config, "createdAt", "updatedAt", "mediaPath", "shuffleMode", "whatsappIds", "customMessage", "campaignType", "mediaName") FROM stdin;
\.


--
-- Data for Name: Plans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Plans" (id, name, users, connections, queues, "createdAt", "updatedAt", amount, "useFacebook", "useInstagram", "useWhatsapp", "useCampaigns", "useExternalApi", "useInternalChat", "useSchedules", "useTelegram", "useEvolution", "useWppOficial", "useGroups", "useAgentsIA", "useWhiteLabel", "useCredits", "useAccountingModule", "useLegalModule", "useContaAzul") FROM stdin;
1	AtendaHUB Jurídico Solo	1	2	4	2026-08-28 22:22:27.819+00	2026-08-28 22:22:27.819+00	79.90	f	t	t	f	f	t	t	f	t	f	f	f	f	f	f	t	f
2	AtendaHUB Jurídico Pro	3	3	10	2026-08-28 22:22:27.819+00	2026-08-28 22:22:27.819+00	159.90	t	t	t	t	t	t	t	f	t	t	f	t	f	t	f	t	f
3	AtendaHUB Jurídico Escritório	10	8	30	2026-08-28 22:22:27.819+00	2026-08-28 22:22:27.819+00	299.90	t	t	t	t	t	t	t	t	t	t	t	t	f	t	f	t	f
4	AtendaHUB Contábil Solo	2	2	6	2026-08-28 22:22:27.878+00	2026-08-28 22:22:27.878+00	99.90	f	t	t	f	t	t	t	f	t	f	f	f	f	f	t	f	t
5	AtendaHUB Contábil Pro	5	4	15	2026-08-28 22:22:27.878+00	2026-08-28 22:22:27.878+00	199.90	t	t	t	t	t	t	t	f	t	t	f	t	f	t	t	f	t
6	AtendaHUB Contábil Escritório	15	10	40	2026-08-28 22:22:27.878+00	2026-08-28 22:22:27.878+00	399.90	t	t	t	t	t	t	t	t	t	t	t	t	f	t	t	f	t
7	Plano 1	10	10	10	2026-08-28 22:22:29.228+00	2026-08-28 22:22:29.228+00	100	t	t	t	t	t	t	t	f	f	f	f	f	f	f	t	t	f
\.


--
-- Data for Name: ProfessionalDossierDocuments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ProfessionalDossierDocuments" (id, "companyId", "dossierId", "uploadedById", "parentDocumentId", "originalName", "storedPath", "mimeType", size, category, version, description, checksum, "createdAt", "updatedAt", "processingStatus", "extractedText", analysis, "processedAt", "processingError", "knowledgeArticleId") FROM stdin;
\.


--
-- Data for Name: ProfessionalDossiers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ProfessionalDossiers" (id, "companyId", "contactId", "ticketId", "ownerId", "createdById", kind, category, title, description, status, priority, reference, "dueDate", amount, checklist, metadata, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: QueueOptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."QueueOptions" (id, title, message, option, "queueId", "parentId", "createdAt", "updatedAt", "optionType") FROM stdin;
\.


--
-- Data for Name: Queues; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Queues" (id, name, color, "greetingMessage", "urlFlow", "tokenFlow", "createdAt", "updatedAt", "companyId", schedules, "outOfHoursMessage", "typebotToken", "typebotUrl", "typebotName") FROM stdin;
1	Suporte Técnico (Fibra & Wi-Fi)	#7C3AED	Você está no Suporte Técnico. Nosso agente inteligente irá analisar sua conexão agora mesmo.			2026-08-29 00:03:57.144501+00	2026-08-29 00:03:57.144501+00	1	\N		\N		
2	Financeiro & 2ª Via Pix	#EC4899	Você está no Financeiro. Posso emitir a 2ª via da sua fatura ou gerar o código Pix instantâneo.			2026-08-29 00:03:57.164805+00	2026-08-29 00:03:57.164805+00	1	\N		\N		
3	Comercial & Novos Planos	#22C55E	Bem-vindo ao Comercial! Conheça nossos planos de fibra óptica ultrarrápida para sua residência ou empresa.			2026-08-29 00:03:57.183443+00	2026-08-29 00:03:57.183443+00	1	\N		\N		
4	Cancelamento & Retenção	#F59E0B	Você está na central de relacionamento. Conte-nos como podemos te ajudar a melhorar sua experiência.			2026-08-29 00:03:57.205763+00	2026-08-29 00:03:57.205763+00	1	\N		\N		
\.


--
-- Data for Name: QuickMessages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."QuickMessages" (id, shortcode, message, "companyId", "createdAt", "updatedAt", "userId") FROM stdin;
\.


--
-- Data for Name: Ratings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Ratings" (id, "companyId", name, message, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: RatingsOptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."RatingsOptions" (id, name, value, "ratingId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: RiskConfigs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."RiskConfigs" (id, "companyId", "queueId", "coldHours", "criticalHours", enabled, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: SGPMessageTemplates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SGPMessageTemplates" (id, "companyId", code, title, subtitle, footer, body, buttons, "sendButtonsOnly", "updatedBy", "createdAt", "updatedAt", enabled) FROM stdin;
\.


--
-- Data for Name: Schedules; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Schedules" (id, body, "sendAt", "sentAt", "contactId", "ticketId", "userId", "companyId", "createdAt", "updatedAt", status, "daysR", "campId", "mediaPath", "mediaName") FROM stdin;
\.


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SequelizeMeta" (name) FROM stdin;
20200717133438-create-users.js
20200717144403-create-contacts.js
20200717145643-create-tickets.js
20200717151645-create-messages.js
20200717170223-create-whatsapps.js
20200723200315-create-contacts-custom-fields.js
20200723202116-add-email-field-to-contacts.js
20200730153237-remove-user-association-from-messages.js
20200730153545-add-fromMe-to-messages.js
20200813114236-change-ticket-lastMessage-column-type.js
20200901235509-add-profile-column-to-users.js
20200903215941-create-settings.js
20200904220257-add-name-to-whatsapp.js
20200906122228-add-name-default-field-to-whatsapp.js
20200906155658-add-whatsapp-field-to-tickets.js
20200919124112-update-default-column-name-on-whatsappp.js
20200927220708-add-isDeleted-column-to-messages.js
20200929145451-add-user-tokenVersion-column.js
20200930162323-add-isGroup-column-to-tickets.js
20200930194808-add-isGroup-column-to-contacts.js
20201004150008-add-contactId-column-to-messages.js
20201004155719-add-vcardContactId-column-to-messages.js
20201004955719-remove-vcardContactId-column-to-messages.js
20201026215410-add-retries-to-whatsapps.js
20201028124427-add-quoted-msg-to-messages.js
20210108001431-add-unreadMessages-to-tickets.js
20210108164404-create-queues.js
20210108164504-add-queueId-to-tickets.js
20210108174594-associate-whatsapp-queue.js
20210108204708-associate-users-queue.js
20210109192513-add-greetingMessage-to-whatsapp.js
20210109192514-create-companies-table.js
20210109192515-add-column-companyId-to-Settings-table.js
20210109192516-add-column-companyId-to-Users-table.js
20210109192517-add-column-companyId-to-Contacts-table.js
20210109192518-add-column-companyId-to-Messages-table.js
20210109192519-add-column-companyId-to-Queues-table.js
20210109192520-add-column-companyId-to-Whatsapps-table.js
20210109192521-add-column-companyId-to-Tickets-table.js
20210109192522-create-plans-table.js
20210109192523-add-column-amount-to-Plan.js
20210109192523-add-column-planId-to-Companies.js
20210109192523-add-column-status-and-schedules-to-Companies.js
20210109192523-create-ticket-notes.js
20210109192524-create-quick-messages.js
20210109192525-add-column-complationMessage-to-whatsapp.js
20210109192526-add-column-outOfHoursMessage-to-whatsapp .js
20210109192527-add-column-super-to-Users-table.js
20210109192528-change-column-message-to-quick-messages-table.js
20210109192529-create-helps.js
20210109192530-add-unique-constraint-to-Contacts-table.js
20210109192531-create-TicketTracking-table.js
20210109192532-add-column-online-to-Users-table.js
20210109192533-create-UserRatings-table.js
20210109192534-add-rated-to-TicketTraking.js
20210109192535-add-column-ratingMessage-to-whatsapp.js
20210109192536-add-unique-constraint-to-Tickets-table.js
20210818102606-add-uuid-to-tickets.js
20210818102607-remove-unique-indexes-to-Queues-table.js
20210818102608-add-unique-indexes-to-Queues-table.js
20210818102609-add-token-to-Whatsapps.js
20211017014719-create-chatbots.js
20211017014721-create-dialog-chatbot.js
20211205164404-create-queue-options.js
20211212125704-add-chatbot-to-tickets.js
20211227010200-create-schedules.js
20212016014719-add-bot-ticket.js
20212016014719-add-queueId-dialog.js
20220115114088-add-column-userId-to-QuickMessages-table.js
20220117130000-create-tags.js
20220117134400-associate-tickets-tags.js
20220122160900-add-status-to-schedules.js
20220220014719-add-farewellMessage-to-whatsapp.js
20220221014717-add-provider-whatsapp.js
20220221014718-add-remoteJid-messages.js
20220221014719-add-jsonMessage-messages.js
20220221014720-add-participant-messages.js
20220221014721-create-baileys.js
20220315110000-create-ContactLists-table.js
20220315110001-create-ContactListItems-table.js
20220315110002-create-Campaigns-table.js
20220315110004-create-CampaignSettings-table.js
20220315110005-remove-constraint-to-Settings.js
20220321130000-create-CampaignShipping.js
20220404000000-add-column-queueId-to-Messages-table.js
20220406000000-add-column-dueDate-to-Companies.js
20220406000001-add-column-recurrence-to-Companies.js
20220411000000-add-column-startTime-and-endTime-to-Queues.js
20220411000001-remove-column-startTime-and-endTime-to-Queues.js
20220411000002-add-column-schedules-and-outOfHoursMessage-to-Queues.js
20220411000003-create-table-Announcements.js
20220425000000-create-table-Chats.js
20220425000001-create-table-ChatUsers.js
20220425000002-create-table-ChatMessages.js
20220512000001-create-Indexes.js
20221123155118-add-acceptAudioMessages-to-contact.js
20221227164300-add-colunms-document-and-paymentMethod-to-companies-table.js
20221229000000-add-column-number-to-Whatsapps.js
20222016014719-add-channel-session.js
20222016014719-add-channel-to-contacts.js
20222016014719-add-channel-to-ticket.js
20222016014719-add-channel-token.js
20222016014719-add-channel-tokenUser.js
20222016014719-add-facebookPageUserId-whatsapp.js
20222016014719-add-facebookUserId-whatsapp.js
20222016014719-add-isAgent-chatbot.js
20230105164900-add-useFacebook-Plans.js
20230105164900-add-useInstagram-Plans.js
20230105164900-add-useWhatsapp-Plans.js
20230106164900-add-useCampaigns-Plans.js
20230106164900-add-useExternalApi-Plans.js
20230106164900-add-useInternalChat-Plans.js
20230106164900-add-useSchedules-Plans.js
20230110072000-create-integrations.js
20230119000002-create-subscriptions.js
20230119000003-create-invoices.js
20230120000000-create-ApiUsage.js
20230123155600-add-colunms-lastLogin-to-companies-table.js
20230124110200-add-endWork-Users.js
20230124110200-add-startWork-Users.js
20230127091500-add-column-active-to-Contacts.js
20230216173900-add-uuid-extension.js
20230216173901-create-rating.js
20230216173902-create-rating-options.js
20230216173903-add-rating-ticket-tracking.js
20230216173904-add-rating-user-rating-options.js
20230216173905-add-rating-users-ratings.js
20230216173906-remove-rate-from-user-rating.js
20230216173907-remove-rate-message-whatsapp.js
20230301110200-add-color-Users.js
20230301110201-add-farewellMessage-Users.js
20230303223000-add-maxUseBotQueues-to-whatsapp copy.js
20230303223001-add-amountUsedBotQueues-to-tickets.js
20230313134300-remove-unique-indexes-to-Contacts-table.js
20230403193000-add-disable-bot-column-to-contacts.js
20230403193000-add-expiresTicket-fields-to-whatsapp.js
20230723301001-add-kanban-to-Tags.js
20230813114239-add-chatbots-options-field.js
20231025205223-create-task.js
20231026022141-add-userId-to-tasks.js
20231111185822-add_reset_password_column.js
20231113175610-add-confirmationToken-to-users.js
20231115011802-create-email-table.js
20231115182013-create-agendamento-email.js
20231115190008-add_scheduled_and_sendAt_to_email.js
20231128232712-create-eventos-table.js
20231206212557-add-chatgpt-field.js
20232016014719-add-greetingMediaAtachmentToWhatsapp.js
20232016014720-add-rattingMediaAtachmentToWhatsapp.js
20232016014721-add-column-typebotVars-to-settings.js
20232016014722-add-column-typebotIdUser-to-tickets.js
20232016014723-add-column-typebotId-to-queue.js
20232016014724-add-column-webhook-n8n-to-settings.js
20232016014725-add-column-flowise-to-settings.js
20232016014726-add-column-daysR-to-Schedules.js
20232016014727-add-column-msgR-to-Tags.js
20232016014728-add-column-mercadoPago-to-settings.js
20232016014729-add-column-media-to-schedules.js
20232016014730-add-column-media-to-tags.js
20232016014731-add-column-typebotUrl-to-Queue.js
20240111000001-create-official-campaigns.js
20240112000001-create-official-campaigns.js
20240128000001-add-performance-indexes.js
20240209165949-add-column-maxbotqueue.js
20240523000000-create-api-requests.js
20240619143800-remove-unique-constraint-to-Tickets-table.js
20241217000001-create-finance-tables.js
20250101000001-create-official-campaigns.js
20250101000002-create-official-campaign-shipping.js
20250111120000-create-official-campaigns.js
20250820004802-add-lid-column-to-contacts.js
20251107000001-create-whatsapp-templates.js
20251108000001-add-tipo-to-whatsapps.js
20251108000002-create-telegram-bots.js
20251108000003-add-telegramBotId-to-tickets.js
20251112-create-baileys-stores.js
20251115200500-add-remoteJid-to-contacts.js
20251115204500-add-wabaId-to-whatsapps.js
20251116000001-add-personal-fields-to-telegram-bots.js
20251116000002-rename-telegrambots-mode-to-kind.js
20251117090000-create-proxies.js
20251120000001-add-idZap-tokenZap-to-whatsapps.js
20251120000002-add-evolution-fields-to-whatsapps.js
20251120000003-add-remoteJid-lid-typebotToken-to-contacts.js
20251126120000-add-avatar-to-users.js
20251127150010-add-useTelegram-useWppOficial-useEvolution-useGroups-useAgentsIA-to-Invoices.js
20251127230500-add-groupContactId-to-tickets.js
20251127230510-add-isGroup-to-messages.js
20251127234000-add-participantContactId-to-messages.js
20251127235000-create-groupcontacts.js
20251127235500-change-participantContactId-fk-to-groupcontacts.js
20251128120000-create-webhook-endpoints.js
20251128120500-create-company-webhook-secrets.js
20251201000001-create-whatsmeow-sessions.js
20251217000002-add-pix-boleto-to-finance-invoices.js
20251217173911-add-templatePaid-to-finance-configs.js
20251218020011-add-financial-fields-to-contacts.js
20251127150000-add-useTelegram-useWppOficial-useEvolution-useGroups-useAgentsIA-to-Plans.js
20251209120000-add-credits-to-companies.js
20251210150000-add-txid-to-invoices.js
20251210192837-add-pushToken-to-users.js
20251217000001-add-lastReminderSentAt-to-finance-invoices.js
20260111000000-add-sendChannel-to-ticket-and-whatsapp.js
20260111000000-create-official-campaigns.js
20260705000001-change-message-large-fields-to-text.js
20260707151000-add-useCredits-to-Plans.js
20260711000000-create-infrastructure-control-plane.js
20260711000001-harden-infrastructure-orchestration.js
20260712000000-add-permissions-to-users.js
20260712000001-add-environment-template-to-infrastructure-releases.js
20260713000000-clear-persisted-baileys-qrcodes.js
20260713010000-expand-settings-value-to-text.js
20260713020000-create-user-whatsapps.js
20260713030000-create-escort-media.js
20260716000001-add-contact-id-to-contact-list-items.js
20260716000002-create-audit-logs.js
20260716000003-add-media-type-to-chat-messages.js
20260716190000-add-campaign-observability.js
20260716210000-create-message-recovery-runs.js
20260717010000-expand-contact-custom-field-value.js
20260717020000-ensure-ticket-last-message-text.js
20260717030000-create-email-integrations.js
20260719000000-create-kipflow-queries.js
20260719010000-add-contact-enrichment-data.js
20260719020000-create-professional-dossiers.js
20260719030000-add-professional-module-access.js
20260719040000-create-professional-dossier-documents.js
20260719050000-create-external-integration-queries.js
20260719060000-create-legal-plans.js
20260719070000-create-accounting-plans.js
20260719080000-add-document-intelligence.js
20260820000000-add-useSignature-to-Users.js
20260824120000-add-optionType-to-queue-options.js
20260824130000-create-incidents.js
create_msg_telegram.js
20260111000001-add-baileys-support-official-campaigns.js
20260111000001-create-official-campaign-shippings.js
20260112000000-add-outgoingId-to-whatsapps.js
20260126000000-add-useWhiteLabel-to-Plans.js
20260126000001-create-whitelabels-table.js
20260126000002-add-config-to-whitelabels.js
20260126000002-create-licenses-table.js
20260128191200-add-indexes-ticket-traking.js
20260202000000-add-domain-to-licenses.js
20260312000000-add-default-enabled-channels-setting.js
20260618193000-update-escort-height-weight-to-decimal.js
20260620000001-create-knowledge-entities.js
20260620000002-create-graph-nodes.js
20260620000003-create-graph-edges.js
20260620000004-create-knowledge-articles.js
20260620000005-create-contact-roles.js
20260620000006-create-knowledge-jobs.js
20260620000007-create-knowledge-access-log.js
20260626000000-create-leadhunter-campaigns.js
20260626000001-add-deleted-at-to-contacts.js
20260701000000-clean-placeholder-contact-names.js
20260824000000-add-unique-contact-number-index.js
20260824000001-add-unique-open-ticket-index.js
\.


--
-- Data for Name: Settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Settings" (key, value, "createdAt", "updatedAt", "companyId", id, "urlTypeBot", "viewerTypeBot", "apiKeyTypeBot", "typeTimer", "recordTimer", "n8nUrl", "urlFlow", "tokenFlow", "keyMp") FROM stdin;
hoursCloseTicketsAuto	9999999999	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
chatBotType	text	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	3	\N	\N	\N	\N	\N	\N	\N	\N	\N
userRandom	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendMsgTransfTicket	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
scheduleType	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendGreetingAccepted	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
acceptCallWhatsapp	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	9	\N	\N	\N	\N	\N	\N	\N	\N	\N
userRating	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendGreetingMessageOneQueues	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	11	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendSignMessage	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.614+00	1	12	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendQueuePosition	enabled	2026-08-28 22:22:29.614+00	2026-08-28 22:22:29.615+00	1	13	\N	\N	\N	\N	\N	\N	\N	\N	\N
acceptAudioMessageContact	enabled	2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
sendFarewellWaitingTicket	enabled	2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	15	\N	\N	\N	\N	\N	\N	\N	\N	\N
ipixc		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	16	\N	\N	\N	\N	\N	\N	\N	\N	\N
tokenixc		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	17	\N	\N	\N	\N	\N	\N	\N	\N	\N
ipmkauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	18	\N	\N	\N	\N	\N	\N	\N	\N	\N
clientidmkauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	19	\N	\N	\N	\N	\N	\N	\N	\N	\N
clientsecretmkauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	20	\N	\N	\N	\N	\N	\N	\N	\N	\N
smtpauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	21	\N	\N	\N	\N	\N	\N	\N	\N	\N
usersmtpauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	22	\N	\N	\N	\N	\N	\N	\N	\N	\N
clientsecretsmtpauth		2026-08-28 22:22:29.615+00	2026-08-28 22:22:29.615+00	1	23	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_config	{"enabled":true,"provider":"sgp","baseUrl":"https://hdnet.sgp.tsmx.com.br","authType":"token","username":"hdchat","password":"","token":"35cc8915-0338-402f-a249-9b7801207887","app":"hdchat","autoBotLookup":true,"allowUnblock":true}	2026-08-28 23:00:31.530246+00	2026-09-14 14:49:11.302512+00	1	26	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_51993032200	{"preCadastro":{"tipo":"","nome":"Victor Gabriel Duarte","cpfcnpj":"03697523090","telefone":"51993032200","cep":"","logradouro":"Rua Bahia","numero":"123","bairro":"","cidade":"centro","uf":"","planoNome":"Fibra - RURAL 20 MEGA"},"sgpResponse":{"message":"Pre-cadastro criado com sucesso","precadastro_id":2}}	2026-08-29 01:54:03.678862+00	2026-09-14 22:55:47.030782+00	1	36	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_03697523090	{"preCadastro":{"tipo":"","nome":"Victor Gabriel Duarte","cpfcnpj":"03697523090","telefone":"51993032200","cep":"","logradouro":"Rua Bahia","numero":"123","bairro":"","cidade":"centro","uf":"","planoNome":"Fibra - RURAL 20 MEGA"},"sgpResponse":{"message":"Pre-cadastro criado com sucesso","precadastro_id":2}}	2026-09-14 22:55:47.034286+00	2026-09-14 22:55:47.034286+00	1	64	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_subscriber_51993032200	{"id":66370,"name":"Victor Gabriel Duarte","cpfCnpj":"03697523080","phone":"51993032200","contracts":[{"id":1787966370,"status":1,"statusDisplay":"Ativo","plan":"SPEED 50 MEGAS FIBRA","openValue":0,"openTitlesCount":0,"connectionType":"fibra","pppoeLogin":"victor_3080","pppoePassword":"123","address":"Rua Jeremias Pinto, 123","neighborhood":"Centro","city":"Porto Alegre","state":"RS","cep":"90000000","numero":"123","phones":["51993032200"],"emails":["victor@hdnet.com.br"],"centralLogin":"","centralPassword":"","promisesCount":0}]}	2026-08-30 00:56:52.592772+00	2026-08-30 00:56:52.592772+00	1	53	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_subscriber_5511975557999	{"id":66371,"name":"Owaran","cpfCnpj":"03697523080","phone":"5511975557999","contracts":[{"id":1787966371,"status":1,"statusDisplay":"Ativo","plan":"FIBRA TURBO 500 MEGAS","openValue":0,"openTitlesCount":0,"connectionType":"fibra","pppoeLogin":"owaran_500m","pppoePassword":"123","address":"Av. Paulista, 1000","neighborhood":"Bela Vista","city":"São Paulo","state":"SP","cep":"01310100","numero":"1000","phones":["5511975557999"],"emails":["owaran@hdnet.com.br"],"centralLogin":"","centralPassword":"","promisesCount":0}]}	2026-08-30 00:56:52.592772+00	2026-08-30 00:56:52.592772+00	1	54	\N	\N	\N	\N	\N	\N	\N	\N	\N
CheckMsgIsGroup	enabled	2026-08-28 22:22:29.614+00	2026-09-04 14:18:04.145881+00	1	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_precadastro_5	{"contractId":1787966370,"efetivado":true,"preCadastro":{"tipo":"F","nome":"Victor Gabriel Duarte","cpfcnpj":"03697523080","telefone":"51993032200","cep":"","logradouro":"Rua Jeremias Pinto","numero":"123","bairro":"Centro","cidade":"Porto Alegre","uf":"RS","planoNome":"SPEED 50 MEGAS FIBRA"},"sgpResponse":{"id":1787966370,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787966370","status":"success"}}	2026-08-29 00:56:41.791767+00	2026-09-04 14:23:55.86707+00	1	30	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_subscriber_5	{"id":66370,"name":"Victor Gabriel Duarte","cpfCnpj":"03697523080","phone":"51993032200","contracts":[{"id":1787966370,"status":1,"statusDisplay":"Ativo","plan":"SPEED 50 MEGAS FIBRA","openValue":0,"openTitlesCount":0,"connectionType":"","pppoeLogin":"victor_3080","pppoePassword":"123","address":"Rua Jeremias Pinto","neighborhood":"Centro","city":"Porto Alegre","state":"RS","cep":"","numero":"123","phones":["51993032200"],"emails":[""],"centralLogin":"","centralPassword":"","promisesCount":0}]}	2026-08-29 01:16:41.025941+00	2026-09-04 14:23:58.544415+00	1	32	\N	\N	\N	\N	\N	\N	\N	\N	\N
asaas		2026-08-28 22:22:29.615+00	2026-09-04 16:03:42.60915+00	1	24	\N	\N	\N	\N	\N	\N	\N	\N	\N
userCreation	enabled	2026-08-28 22:22:29.614+00	2026-09-04 16:03:48.243655+00	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_13		2026-08-29 23:09:37.163281+00	2026-08-29 23:09:37.163281+00	1	46	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_5		2026-08-29 00:52:38.70387+00	2026-08-29 01:18:38.230984+00	1	29	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_51999998888	{"preCadastro":{"tipo":"","nome":"Victor Teste","cpfcnpj":"03697523080","telefone":"51999998888","cep":"","logradouro":"","numero":"","bairro":"","cidade":"","uf":"","planoNome":"Teste"},"sgpResponse":{"id":1787973234,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787973234","status":"success"}}	2026-08-29 03:13:54.64733+00	2026-08-29 03:13:54.64733+00	1	38	\N	\N	\N	\N	\N	\N	\N	\N	\N
business_agent_config	{"id":0,"companyId":1,"name":"","enabled":true,"provider":"openai","model":"gpt-4o-mini","apiKey":"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","temperature":0.2,"maxTokens":600,"agentVersion":"","promptVersion":"","personaVersion":"","toolsetVersion":"","personality":{"agentName":"Sofia","role":"Especialista em Atendimento HDNET Fibra","tone":"natural","formalityLevel":0,"allowEmojis":false,"avgMessageLength":"short","allowedExpressions":null,"prohibitedExpressions":null,"commercialBehavior":"","serviceRules":null,"transparentAi":false},"handoffRules":{"handoffOnCustomerRequest":false,"handoffOnNegativeSentiment":false,"handoffOnToolFailure":false,"handoffOnLowConfidence":false,"handoffKeywords":null},"guardrails":{"maxStepsPerRun":0,"requireConfirmationTools":null,"blockedKeywords":null,"maxDailyTokensPerContact":0,"decisionConfidenceThreshold":0,"handoffConfidenceThreshold":0},"proactiveRules":null,"enabledTools":["create_sgp_precadastro","list_isp_plans","lookup_subscriber","check_internet_status","run_line_diagnostic","get_invoices","generate_pix_copy_paste","request_temporary_unblock","transfer_queue","handoff_to_human","search_knowledge"],"createdAt":"0001-01-01T00:00:00Z","updatedAt":"2026-08-29T23:08:52.862559186Z"}	2026-08-28 22:41:48.112875+00	2026-08-29 23:08:52.863033+00	1	25	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_precadastro_7	{"preCadastro":{"tipo":"","nome":"Victor Gabriel Duarte","cpfcnpj":"03697523080","telefone":"51993032200","cep":"","logradouro":"rua Jeremias pinto kkkk","numero":"123","bairro":"","cidade":"não informado","uf":"","planoNome":"3MB"},"sgpResponse":{"id":1787968443,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787968443","status":"success"}}	2026-08-29 01:54:03.674663+00	2026-09-04 14:23:57.148666+00	1	35	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_6		2026-08-29 01:18:46.903253+00	2026-08-29 01:52:46.162176+00	1	33	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_03697523080	{"preCadastro":{"tipo":"","nome":"Victor Teste","cpfcnpj":"03697523080","telefone":"51999998888","cep":"","logradouro":"","numero":"","bairro":"","cidade":"","uf":"","planoNome":"Teste"},"sgpResponse":{"id":1787973234,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787973234","status":"success"}}	2026-08-29 01:54:03.682035+00	2026-08-29 03:13:54.752642+00	1	37	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_51988887777	{"preCadastro":{"tipo":"","nome":"Teste Endpoint","cpfcnpj":"11122233344","telefone":"51988887777","cep":"","logradouro":"","numero":"","bairro":"","cidade":"","uf":"","planoNome":"Teste"},"sgpResponse":{"id":1787973648,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787973648","status":"success"}}	2026-08-29 03:20:48.239084+00	2026-08-29 03:20:48.239084+00	1	39	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_12		2026-08-29 03:27:04.483414+00	2026-08-29 23:09:39.56315+00	1	45	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_2		2026-08-29 00:22:02.813842+00	2026-08-29 00:52:31.033387+00	1	28	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_precadastro_11122233344	{"preCadastro":{"tipo":"","nome":"Teste Endpoint","cpfcnpj":"11122233344","telefone":"51988887777","cep":"","logradouro":"","numero":"","bairro":"","cidade":"","uf":"","planoNome":"Teste"},"sgpResponse":{"id":1787973648,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787973648","status":"success"}}	2026-08-29 03:20:48.242773+00	2026-08-29 03:20:48.242773+00	1	40	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_1		2026-08-29 01:05:58.75953+00	2026-08-29 01:05:58.75953+00	1	31	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_7		2026-08-29 01:52:54.742579+00	2026-08-29 03:26:40.072921+00	1	34	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_4		2026-08-29 03:26:43.232964+00	2026-08-29 03:26:43.232964+00	1	41	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_11		2026-08-29 03:26:48.340359+00	2026-08-29 03:26:48.340359+00	1	42	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_9		2026-08-29 03:26:50.94529+00	2026-08-29 03:26:50.94529+00	1	43	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_10		2026-08-29 03:26:53.40017+00	2026-08-29 03:26:53.40017+00	1	44	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_22		2026-08-30 00:32:51.989322+00	2026-08-30 00:53:49.847515+00	1	50	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_14		2026-08-29 23:09:42.39353+00	2026-08-29 23:09:42.39353+00	1	47	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_3		2026-08-29 23:09:58.045236+00	2026-08-29 23:09:58.045236+00	1	48	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_8		2026-08-29 23:10:04.318399+00	2026-08-29 23:10:04.318399+00	1	49	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_21		2026-09-01 19:59:15.8554+00	2026-09-01 19:59:15.8554+00	1	55	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_29		2026-09-14 22:41:37.346835+00	2026-09-14 22:41:37.346835+00	1	62	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_15		2026-09-01 19:59:24.106273+00	2026-09-01 19:59:24.106273+00	1	56	\N	\N	\N	\N	\N	\N	\N	\N	\N
isp_subscriber_03697523080	{"id":66370,"name":"Victor Gabriel Duarte","cpfCnpj":"03697523080","phone":"51993032200","contracts":[{"id":1787966370,"status":1,"statusDisplay":"Ativo","plan":"SPEED 50 MEGAS FIBRA","openValue":0,"openTitlesCount":0,"connectionType":"fibra","pppoeLogin":"victor_3080","pppoePassword":"123","address":"Rua Jeremias Pinto, 123","neighborhood":"Centro","city":"Porto Alegre","state":"RS","cep":"90000000","numero":"123","phones":["51993032200"],"emails":["victor@hdnet.com.br"],"centralLogin":"","centralPassword":"","promisesCount":0}]}	2026-08-30 00:56:52.592772+00	2026-08-30 00:56:52.592772+00	1	52	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_23		2026-08-30 00:54:06.6796+00	2026-09-01 19:59:20.244119+00	1	51	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_28		2026-09-01 19:59:27.075512+00	2026-09-01 19:59:27.075512+00	1	57	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_27		2026-09-01 19:59:29.793811+00	2026-09-01 19:59:29.793811+00	1	58	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_25		2026-09-01 19:59:32.247155+00	2026-09-01 19:59:32.247155+00	1	59	\N	\N	\N	\N	\N	\N	\N	\N	\N
enabled_channels	{"whatsapp":true,"wppoficial":true,"whatsmeow":true,"evolution":true,"telegram":true,"webchat":true,"facebook":true,"instagram":true}	2026-09-04 14:06:41.198636+00	2026-09-04 14:06:41.198636+00	1	60	\N	\N	\N	\N	\N	\N	\N	\N	\N
business_agent_memories_1	[{"id":1789425756563934053,"companyId":1,"contactId":2,"tier":"customer","key":"cpf_informado","value":"11929735502","source":"customer_statement","confidence":1,"validationStatus":"VERIFIED","createdAt":"2026-09-14T22:42:36.56393432Z"}]	2026-09-14 22:39:08.996485+00	2026-09-14 22:42:36.56421+00	1	61	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_precadastro_30	{"preCadastro":{"tipo":"","nome":"Victor Gabriel Duarte","cpfcnpj":"03697523090","telefone":"51993032200","cep":"","logradouro":"Rua Bahia","numero":"123","bairro":"","cidade":"centro","uf":"","planoNome":"Fibra - RURAL 20 MEGA"},"sgpResponse":{"message":"Pre-cadastro criado com sucesso","precadastro_id":2}}	2026-09-14 22:55:47.02664+00	2026-09-14 22:55:47.02664+00	1	63	\N	\N	\N	\N	\N	\N	\N	\N	\N
ticket_flow_state_33	{"lastOutput":"Você está na central de relacionamento. Conte-nos como podemos te ajudar a melhorar sua experiência.","updatedAt":"2026-09-15T14:03:51Z"}	2026-09-15 14:03:51.586391+00	2026-09-15 14:03:51.586391+00	1	65	\N	\N	\N	\N	\N	\N	\N	\N	\N
business_agent_runs_1	[{"id":"run_35_1789486106538002855","companyId":1,"ticketId":35,"contactId":32,"contactName":"אושר מיילי","contactNumber":"972549926556","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Aguardo seu retorno quando estiver disponível."}],"toolsExecuted":[],"outputMessage":"Aguardo seu retorno quando estiver disponível.","handoffTriggered":false,"tokensUsed":2505,"estimatedCost":0,"latencyMs":20770,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T15:28:26.53800519Z"},{"id":"run_35_1789486063588169768","companyId":1,"ticketId":35,"contactId":32,"contactName":"אושר מיילי","contactNumber":"972549926556","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Entendi. Se precisar de algo, é só avisar."}],"toolsExecuted":[],"outputMessage":"Entendi. Se precisar de algo, é só avisar.","handoffTriggered":false,"tokensUsed":2476,"estimatedCost":0,"latencyMs":21662,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T15:27:43.588172105Z"},{"id":"run_35_1789485984046741022","companyId":1,"ticketId":35,"contactId":32,"contactName":"אושר מיילי","contactNumber":"972549926556","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para que eu possa te ajudar, preciso do seu CPF."}],"toolsExecuted":[],"outputMessage":"Para que eu possa te ajudar, preciso do seu CPF.","handoffTriggered":false,"tokensUsed":2437,"estimatedCost":0,"latencyMs":23519,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T15:26:24.046742666Z"},{"id":"run_33_1789479693609958270","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Transferência para Humano","confidence":0.9,"status":"handoff","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"TIMELY","policyCompliance":true,"evaluationSummary":"Handoff para atendente humano executado com briefing estruturado."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_LxyYOdgrY3OdMKQ5kuh1snnh","toolName":"handoff_to_human","arguments":{"reason":"Solicitação expressa do cliente para atendimento humano.","suggested_action":"Atender a solicitação do cliente.","summary":"Cliente solicitou desligar o bot e atendimento humano.","target_queue":"Retenção"},"idempotencyKey":"handoff_to_human:1:33"}],"toolResults":[{"toolCallId":"","toolName":"handoff_to_human","success":true,"code":"OK","data":{"handoffCompleted":true,"reason":"Solicitação expressa do cliente para atendimento humano.","targetQueue":"Cancelamento \\u0026 Retenção"},"userSafeMessage":"Atendimento transferido para a equipe humana com briefing completo.","retryable":false,"latencyMs":27}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu atendimento foi transferido para a equipe humana. Eles estarão com você em breve."}],"toolsExecuted":["handoff_to_human"],"outputMessage":"Seu atendimento foi transferido para a equipe humana. Eles estarão com você em breve.","handoffTriggered":true,"handoffReason":"Solicitação expressa do cliente para atendimento humano.","tokensUsed":4603,"estimatedCost":0,"latencyMs":2357,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T13:41:33.60995944Z"},{"id":"run_33_1789479648493310597","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Parece que a mensagem não está completa. Poderia fornecer mais detalhes ou esclarecer o que você gostaria de saber?"}],"toolsExecuted":[],"outputMessage":"Parece que a mensagem não está completa. Poderia fornecer mais detalhes ou esclarecer o que você gostaria de saber?","handoffTriggered":false,"tokensUsed":2184,"estimatedCost":0,"latencyMs":1218,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T13:40:48.4933119Z"},{"id":"run_33_1789479589704882767","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Áudio"}],"toolsExecuted":[],"outputMessage":"Áudio","handoffTriggered":false,"tokensUsed":2164,"estimatedCost":0,"latencyMs":1577,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T13:39:49.704884338Z"},{"id":"run_33_1789479457954597075","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Sim, estou aqui. O que você precisa?"}],"toolsExecuted":[],"outputMessage":"Sim, estou aqui. O que você precisa?","handoffTriggered":false,"tokensUsed":2177,"estimatedCost":0,"latencyMs":3171,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T13:37:37.954599505Z"},{"id":"run_33_1789432989725918828","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Sem problemas. Quando estiver pronto, é só me chamar. Estou à disposição para ajudar com o que precisar."}],"toolsExecuted":[],"outputMessage":"Sem problemas. Quando estiver pronto, é só me chamar. Estou à disposição para ajudar com o que precisar.","handoffTriggered":false,"tokensUsed":2157,"estimatedCost":0,"latencyMs":1037,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T00:43:09.725920037Z"},{"id":"run_33_1789432979242818489","companyId":1,"ticketId":33,"contactId":1,"contactName":"Rogério M.","contactNumber":"556992587930","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Vamos direto ao assunto. Como posso ajudar você hoje?"}],"toolsExecuted":[],"outputMessage":"Vamos direto ao assunto. Como posso ajudar você hoje?","handoffTriggered":false,"tokensUsed":2113,"estimatedCost":0,"latencyMs":6938,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-15T00:42:59.242820306Z"},{"id":"run_31_1789427774222689529","companyId":1,"ticketId":31,"contactId":29,"contactName":"‎","contactNumber":"557381317505","channel":"whatsmeow","intentDetected":"Financeiro","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para facilitar o pagamento da sua fatura, aqui estão as opções disponíveis:\\n\\n1. **Código PIX**: Você pode usar o código PIX para efetuar o pagamento diretamente pelo aplicativo do seu banco.\\n\\n2. **Código de Barras**: O código de barras da fatura pode ser utilizado em bancos ou casas lotéricas para pagamento.\\n\\n3. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\\n\\n4. **Abrir Fatura**: Você pode acessar a fatura online para visualizar todos os detalhes.\\n\\nCaso precise de assistência para acessar alguma dessas opções, estou à disposição para ajudar!"}],"toolsExecuted":[],"outputMessage":"Para facilitar o pagamento da sua fatura, aqui estão as opções disponíveis:\\n\\n1. **Código PIX**: Você pode usar o código PIX para efetuar o pagamento diretamente pelo aplicativo do seu banco.\\n\\n2. **Código de Barras**: O código de barras da fatura pode ser utilizado em bancos ou casas lotéricas para pagamento.\\n\\n3. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\\n\\n4. **Abrir Fatura**: Você pode acessar a fatura online para visualizar todos os detalhes.\\n\\nCaso precise de assistência para acessar alguma dessas opções, estou à disposição para ajudar!","handoffTriggered":false,"tokensUsed":3133,"estimatedCost":0,"latencyMs":6296,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T23:16:14.222691942Z"},{"id":"run_31_1789427579687407529","companyId":1,"ticketId":31,"contactId":29,"contactName":"‎","contactNumber":"557381317505","channel":"whatsmeow","intentDetected":"Financeiro","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para acessar suas faturas e realizar pagamentos, aqui estão as opções disponíveis:\\n\\n1. **Cópia do Código PIX**: Você pode usar o código PIX para realizar o pagamento diretamente pelo aplicativo do seu banco. \\n\\n2. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\\n\\n3. **Fatura Online**: Você pode visualizar suas faturas diretamente no sistema.\\n\\nSe precisar de ajuda para acessar alguma dessas opções ou realizar um pagamento, é só avisar!"}],"toolsExecuted":[],"outputMessage":"Para acessar suas faturas e realizar pagamentos, aqui estão as opções disponíveis:\\n\\n1. **Cópia do Código PIX**: Você pode usar o código PIX para realizar o pagamento diretamente pelo aplicativo do seu banco. \\n\\n2. **Baixar Boleto**: É possível baixar o boleto em PDF para pagamento.\\n\\n3. **Fatura Online**: Você pode visualizar suas faturas diretamente no sistema.\\n\\nSe precisar de ajuda para acessar alguma dessas opções ou realizar um pagamento, é só avisar!","handoffTriggered":false,"tokensUsed":2983,"estimatedCost":0,"latencyMs":2378,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T23:12:59.687409552Z"},{"id":"run_31_1789427427759063048","companyId":1,"ticketId":31,"contactId":29,"contactName":"‎","contactNumber":"557381317505","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"A consulta às faturas revelou que existem 9 faturas no sistema. Aqui estão as que estão em aberto:\\n\\n1. **Fatura 79056**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/03/2025\\n   - **Status:** Aberto\\n\\n2. **Fatura 78030**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/02/2025\\n   - **Status:** Aberto\\n\\n3. **Fatura 79921**\\n   - **Valor:** R$ 79,99\\n   - **Vencimento:** 05/04/2025\\n   - **Status:** Cancelado\\n\\nSe precisar de mais detalhes ou quiser resolver algo relacionado a essas faturas, é só avisar."}],"toolsExecuted":[],"outputMessage":"A consulta às faturas revelou que existem 9 faturas no sistema. Aqui estão as que estão em aberto:\\n\\n1. **Fatura 79056**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/03/2025\\n   - **Status:** Aberto\\n\\n2. **Fatura 78030**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/02/2025\\n   - **Status:** Aberto\\n\\n3. **Fatura 79921**\\n   - **Valor:** R$ 79,99\\n   - **Vencimento:** 05/04/2025\\n   - **Status:** Cancelado\\n\\nSe precisar de mais detalhes ou quiser resolver algo relacionado a essas faturas, é só avisar.","handoffTriggered":false,"tokensUsed":2741,"estimatedCost":0,"latencyMs":7287,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T23:10:27.75906532Z"},{"id":"run_30_1789426545853085679","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_AlUhrmfjIHgBCn7YYMybpbVo","toolName":"create_sgp_precadastro","arguments":{"address":"Rua Bahia","city":"centro","cpf_cnpj":"03697523090","name":"Victor Gabriel Duarte","number":"123","phone":"51993032200","plan_name":"Fibra - RURAL 20 MEGA"},"idempotencyKey":"create_sgp_precadastro:1:30"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":true,"code":"OK","data":{"name":"Victor Gabriel Duarte","plan":"Fibra - RURAL 20 MEGA","sgpResponse":{"message":"Pre-cadastro criado com sucesso","precadastro_id":2},"status":"success"},"userSafeMessage":"Pré-cadastro registrado com sucesso no ERP SGP.","retryable":false,"latencyMs":191}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA** foi registrado com sucesso! \\n\\nAqui estão os dados que foram cadastrados:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-90\\n- **Endereço:** Rua Bahia, 123, Centro\\n- **Telefone:** 519.***.***-00\\n\\nA equipe técnica entrará em contato em breve para agendar a instalação. Se precisar de mais alguma coisa, estou à disposição."}],"toolsExecuted":["create_sgp_precadastro"],"outputMessage":"Seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA** foi registrado com sucesso! \\n\\nAqui estão os dados que foram cadastrados:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-90\\n- **Endereço:** Rua Bahia, 123, Centro\\n- **Telefone:** 519.***.***-00\\n\\nA equipe técnica entrará em contato em breve para agendar a instalação. Se precisar de mais alguma coisa, estou à disposição.","handoffTriggered":false,"tokensUsed":6565,"estimatedCost":0,"latencyMs":3953,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:55:45.853086711Z"},{"id":"run_30_1789426518599234659","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para registrar seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA**, preciso das seguintes informações:\\n\\n- Nome completo\\n- CPF\\n- Endereço completo (com número e bairro)\\n- Telefone/WhatsApp para contato\\n\\nAssim que eu tiver esses dados, farei o registro e a equipe técnica entrará em contato para agendar a instalação."}],"toolsExecuted":[],"outputMessage":"Para registrar seu pré-cadastro para o plano **Fibra - RURAL 20 MEGA**, preciso das seguintes informações:\\n\\n- Nome completo\\n- CPF\\n- Endereço completo (com número e bairro)\\n- Telefone/WhatsApp para contato\\n\\nAssim que eu tiver esses dados, farei o registro e a equipe técnica entrará em contato para agendar a instalação.","handoffTriggered":false,"tokensUsed":3031,"estimatedCost":0,"latencyMs":1393,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:55:18.599235958Z"},{"id":"run_30_1789426504832460235","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_n2uc1J2vYUugIbWzpANYSMMU","toolName":"list_isp_plans","arguments":{},"idempotencyKey":"list_isp_plans:1:30"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":0,"id":13,"nome":"Fibra - 200 MEGA","upload_kbps":0,"valor_mensal":"R$ 59.99"},{"download_kbps":0,"id":14,"nome":"Fibra - 400 MEGA","upload_kbps":0,"valor_mensal":"R$ 79.99"},{"download_kbps":0,"id":15,"nome":"Fibra - 800 MEGA","upload_kbps":0,"valor_mensal":"R$ 99.99"},{"download_kbps":0,"id":6,"nome":"Fibra - RURAL 20 MEGA","upload_kbps":0,"valor_mensal":"R$ 99.99"}],"totalNoSgp":10},"userSafeMessage":"Foram localizados 4 planos oficiais no ERP SGP.","retryable":false,"latencyMs":3}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Além dos planos que mencionei anteriormente, existem mais opções disponíveis. Aqui está a lista completa:\\n\\n1. **Fibra - 200 MEGA**: R$ 59,99\\n2. **Fibra - 400 MEGA**: R$ 79,99\\n3. **Fibra - 800 MEGA**: R$ 99,99\\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\\n\\nSe precisar de mais informações sobre algum plano específico ou quiser realizar uma contratação, estou à disposição."}],"toolsExecuted":["list_isp_plans"],"outputMessage":"Além dos planos que mencionei anteriormente, existem mais opções disponíveis. Aqui está a lista completa:\\n\\n1. **Fibra - 200 MEGA**: R$ 59,99\\n2. **Fibra - 400 MEGA**: R$ 79,99\\n3. **Fibra - 800 MEGA**: R$ 99,99\\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\\n\\nSe precisar de mais informações sobre algum plano específico ou quiser realizar uma contratação, estou à disposição.","handoffTriggered":false,"tokensUsed":6044,"estimatedCost":0,"latencyMs":2420,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:55:04.832461525Z"},{"id":"run_30_1789426482527994695","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Os valores dos planos disponíveis são:\\n\\n1. **Fibra - 200 MEGA**: R$ 59,99\\n2. **Fibra - 400 MEGA**: R$ 79,99\\n3. **Fibra - 800 MEGA**: R$ 99,99\\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\\n\\nSe precisar de mais detalhes ou quiser contratar um plano, é só me avisar."}],"toolsExecuted":[],"outputMessage":"Os valores dos planos disponíveis são:\\n\\n1. **Fibra - 200 MEGA**: R$ 59,99\\n2. **Fibra - 400 MEGA**: R$ 79,99\\n3. **Fibra - 800 MEGA**: R$ 99,99\\n4. **Fibra - RURAL 20 MEGA**: R$ 99,99\\n\\nSe precisar de mais detalhes ou quiser contratar um plano, é só me avisar.","handoffTriggered":false,"tokensUsed":2841,"estimatedCost":0,"latencyMs":2449,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:54:42.527996353Z"},{"id":"run_30_1789426447741155206","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_U7PoBs89uPKGUE1RYBq0eOsk","toolName":"lookup_subscriber","arguments":{"query":"11929735502","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:30"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"contracts":[{"address":"TRAV. DAMIANA","centralLogin":"victor_novais","centralPassword":"s5dkddj7","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/lGgr1QKfe9ylLQkzSg==/f87cde5a4a8f8aa6eb411fd64bc838de/2026","emails":null,"id":10346,"neighborhood":"SANTO ANTONIO","openTitlesCount":2,"openValue":199.98,"phones":["(73) 98147-0177"],"plan":"400 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor_novais","pppoePassword":"123","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"cpfCnpj":"11929735502","id":1766,"name":"JOAO VICTOR NOVAIS SANTOS GONZAGA"},"contracts":[{"address":"TRAV. DAMIANA","centralLogin":"victor_novais","centralPassword":"s5dkddj7","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/lGgr1QKfe9ylLQkzSg==/f87cde5a4a8f8aa6eb411fd64bc838de/2026","emails":null,"id":10346,"neighborhood":"SANTO ANTONIO","openTitlesCount":2,"openValue":199.98,"phones":["(73) 98147-0177"],"plan":"400 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor_novais","pppoePassword":"123","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente JOAO VICTOR NOVAIS SANTOS GONZAGA localizado com sucesso no sistema.","retryable":false,"latencyMs":0}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Atualmente, você estava no plano de **400 MEGA**, mas ele está **cancelado**. O valor total das faturas em aberto é de **R$ 199,98**.\\n\\nSe desejar reativar o plano ou mudar para outra opção, estou à disposição para ajudar."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Atualmente, você estava no plano de **400 MEGA**, mas ele está **cancelado**. O valor total das faturas em aberto é de **R$ 199,98**.\\n\\nSe desejar reativar o plano ou mudar para outra opção, estou à disposição para ajudar.","handoffTriggered":false,"tokensUsed":5987,"estimatedCost":0,"latencyMs":1987,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:54:07.741156542Z"},{"id":"run_30_1789426407384778947","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_cWmjBEU8J4fnGvazXq1mcHkb","toolName":"list_isp_plans","arguments":{},"idempotencyKey":"list_isp_plans:1:30"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":0,"id":13,"nome":"Fibra - 200 MEGA","upload_kbps":0,"valor_mensal":"R$ 59.99"},{"download_kbps":0,"id":14,"nome":"Fibra - 400 MEGA","upload_kbps":0,"valor_mensal":"R$ 79.99"},{"download_kbps":0,"id":15,"nome":"Fibra - 800 MEGA","upload_kbps":0,"valor_mensal":"R$ 99.99"},{"download_kbps":0,"id":6,"nome":"Fibra - RURAL 20 MEGA","upload_kbps":0,"valor_mensal":"R$ 99.99"}],"totalNoSgp":10},"userSafeMessage":"Foram localizados 4 planos oficiais no ERP SGP.","retryable":false,"latencyMs":0}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Aqui estão os planos disponíveis:\\n\\n1. **Fibra - 200 MEGA**\\n   - **Valor:** R$ 59,99\\n\\n2. **Fibra - 400 MEGA**\\n   - **Valor:** R$ 79,99\\n\\n3. **Fibra - 800 MEGA**\\n   - **Valor:** R$ 99,99\\n\\n4. **Fibra - RURAL 20 MEGA**\\n   - **Valor:** R$ 99,99\\n\\nSe precisar de mais informações ou quiser realizar uma contratação, é só avisar."}],"toolsExecuted":["list_isp_plans"],"outputMessage":"Aqui estão os planos disponíveis:\\n\\n1. **Fibra - 200 MEGA**\\n   - **Valor:** R$ 59,99\\n\\n2. **Fibra - 400 MEGA**\\n   - **Valor:** R$ 79,99\\n\\n3. **Fibra - 800 MEGA**\\n   - **Valor:** R$ 99,99\\n\\n4. **Fibra - RURAL 20 MEGA**\\n   - **Valor:** R$ 99,99\\n\\nSe precisar de mais informações ou quiser realizar uma contratação, é só avisar.","handoffTriggered":false,"tokensUsed":5415,"estimatedCost":0,"latencyMs":6540,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:53:27.384780231Z"},{"id":"run_30_1789425756567552100","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Segunda Via / Financeiro","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_rt0304MeCWvOoW0YprFUs8kb","toolName":"lookup_subscriber","arguments":{"query":"11929735502","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:30"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"contracts":[{"address":"TRAV. DAMIANA","centralLogin":"victor_novais","centralPassword":"s5dkddj7","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/lGgr1QKfe9ylLQkzSg==/f87cde5a4a8f8aa6eb411fd64bc838de/2026","emails":null,"id":10346,"neighborhood":"SANTO ANTONIO","openTitlesCount":2,"openValue":199.98,"phones":["(73) 98147-0177"],"plan":"400 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor_novais","pppoePassword":"123","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"cpfCnpj":"11929735502","id":1766,"name":"JOAO VICTOR NOVAIS SANTOS GONZAGA"},"contracts":[{"address":"TRAV. DAMIANA","centralLogin":"victor_novais","centralPassword":"s5dkddj7","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/lGgr1QKfe9ylLQkzSg==/f87cde5a4a8f8aa6eb411fd64bc838de/2026","emails":null,"id":10346,"neighborhood":"SANTO ANTONIO","openTitlesCount":2,"openValue":199.98,"phones":["(73) 98147-0177"],"plan":"400 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor_novais","pppoePassword":"123","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente JOAO VICTOR NOVAIS SANTOS GONZAGA localizado com sucesso no sistema.","retryable":false,"latencyMs":0}]},{"stepIndex":2,"phase":"TOOL_CALL","toolCalls":[{"id":"call_MFvMG2JfY85uW56sv3iHVwxE","toolName":"get_invoices","arguments":{"contract_id":10346},"idempotencyKey":"get_invoices:1:30"}],"toolResults":[{"toolCallId":"","toolName":"get_invoices","success":true,"code":"OK","data":{"count":9,"invoices":[{"barcode":"36491000000000079990000100013819400000024287","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00019 00013.819404 00000.242875 1 00000000007999","dueDate":"2025-04-05","gateway":"DIEGO","id":26412,"invoiceNumber":79921,"issueDate":"2025-02-04","originalDueDate":"2025-04-05","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/79921-8MIAQSR0QV/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/8c565cb8642f43aba3498e06a30f8c2d5204000053039865802BR5905EFISA6008SAOPAULO62070503***63049984","status":"cancelado","updatedValue":79.99,"value":79.99},{"barcode":"36493000000000099990000700013819400000023961","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00076 00013.819404 00000.239616 3 00000000009999","dueDate":"2025-03-05","gateway":"DIEGO","id":25547,"invoiceNumber":79056,"issueDate":"2025-01-04","originalDueDate":"2025-03-05","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/79056-UB7ZK1HEQV/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/18db7d82eb14453ba778f12663f000e35204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C102","status":"aberto","updatedValue":286.11,"value":99.99},{"barcode":"36491000000000099990000100013819400000023570","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00019 00013.819404 00000.235705 1 00000000009999","dueDate":"2025-02-05","gateway":"DIEGO","id":24521,"invoiceNumber":78030,"issueDate":"2024-12-07","originalDueDate":"2025-02-05","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/78030-84SVEV1O7M/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/c0f094096212479fa2cc09c5016589955204000053039865802BR5905EFISA6008SAOPAULO62070503***630401B2","status":"aberto","updatedValue":295.35,"value":99.99},{"barcode":"36499000000000099990000800013819400000023188","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/76989-W52PC7FDSY/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00084 00013.819404 00000.231886 9 00000000009999","dueDate":"2025-01-05","gateway":"DIEGO","id":23480,"invoiceNumber":76989,"issueDate":"2024-11-06","originalDueDate":"2025-01-05","paymentDate":"2025-01-02","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/76989-W52PC7FDSY/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/5dc4529bc71749c8b400208e384e5e295204000053039865802BR5905EFISA6008SAOPAULO62070503***6304F5C1","status":"pago","updatedValue":99.99,"value":99.99},{"barcode":"36494000000000099990000900013819400000022887","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/76223-EGYU20QM4M/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00092 00013.819404 00000.228874 4 00000000009999","dueDate":"2024-12-05","gateway":"DIEGO","id":22708,"invoiceNumber":76223,"issueDate":"2024-10-06","originalDueDate":"2024-12-05","paymentDate":"2024-12-01","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/76223-EGYU20QM4M/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/c0825f3a7f714698b232e6bda6968d655204000053039865802BR5905EFISA6008SAOPAULO62070503***6304FEA3","status":"pago","updatedValue":99.99,"value":99.99},{"barcode":"36494000000000099900000100013819400000022547","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/75550-M45LH0CNB3/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00019 00013.819404 00000.225474 4 00000000009990","dueDate":"2024-11-05","gateway":"DIEGO","id":22032,"invoiceNumber":75550,"issueDate":"2024-09-06","originalDueDate":"2024-11-05","paymentDate":"2024-10-31","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/75550-M45LH0CNB3/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/08e4b8b04f6e4e0984f6a390765d7d905204000053039865802BR5905EFISA6008SAOPAULO62070503***6304ED2F","status":"pago","updatedValue":99.9,"value":99.9},{"barcode":"36491000000000099900000400013819400000022433","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/75251-TASM2P32AN/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00043 00013.819404 00000.224337 1 00000000009990","dueDate":"2024-10-05","gateway":"DIEGO","id":21733,"invoiceNumber":75251,"issueDate":"2024-09-05","originalDueDate":"2024-10-05","paymentDate":"2024-09-30","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/75251-TASM2P32AN/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/321d4557d53641daad33e85bdec853655204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C937","status":"pago","updatedValue":99.9,"value":99.9},{"barcode":"","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/75250-RD0KWPGQD8/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"","dueDate":"2024-09-05","gateway":"DIEGO","id":21732,"invoiceNumber":75250,"issueDate":"2024-09-05","originalDueDate":"2024-09-05","paymentDate":"2024-09-05","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/75250-RD0KWPGQD8/","pixCode":"","status":"pago","updatedValue":99.9,"value":99.9},{"barcode":"36492000000000099900000600013819400000022432","billingLink":"https://hdnet.sgp.tsmx.com.br/public/cobranca/75249-NSQKPSL2IU/","clientCpfCnpj":"11929735502","clientName":"JOAO VICTOR NOVAIS SANTOS GONZAGA","contractId":10346,"digitableLine":"36490.00068 00013.819404 00000.224329 2 00000000009990","dueDate":"2024-09-15","gateway":"DIEGO","id":21731,"invoiceNumber":75249,"issueDate":"2024-09-05","originalDueDate":"2024-09-15","pdfLink":"https://hdnet.sgp.tsmx.com.br/boleto/75249-NSQKPSL2IU/","pixCode":"00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/715f507a1a8b4a0c85bef4edf435541a5204000053039865802BR5905EFISA6008SAOPAULO62070503***63041DE3","status":"cancelado","updatedValue":99.9,"value":99.9}]},"userSafeMessage":"Foram encontradas 9 faturas no sistema.","retryable":false,"latencyMs":261}]},{"stepIndex":3,"phase":"RESPOND","responseChunk":"Foram encontradas 9 faturas no sistema. Aqui estão as que estão em aberto:\\n\\n1. **Fatura 79056**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/03/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/)\\n\\n2. **Fatura 78030**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/02/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/)\\n\\n3. **Fatura 79921**\\n   - **Valor:** R$ 79,99\\n   - **Vencimento:** 05/04/2025\\n   - **Status:** Cancelado\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/)\\n\\nCaso precise de mais informações ou queira resolver algo relacionado a essas faturas, estou à disposição."}],"toolsExecuted":["lookup_subscriber","get_invoices"],"outputMessage":"Foram encontradas 9 faturas no sistema. Aqui estão as que estão em aberto:\\n\\n1. **Fatura 79056**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/03/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79056-UB7ZK1HEQV/)\\n\\n2. **Fatura 78030**\\n   - **Valor:** R$ 99,99\\n   - **Vencimento:** 05/02/2025\\n   - **Status:** Aberto\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/78030-84SVEV1O7M/)\\n\\n3. **Fatura 79921**\\n   - **Valor:** R$ 79,99\\n   - **Vencimento:** 05/04/2025\\n   - **Status:** Cancelado\\n   - [Link para pagamento](https://hdnet.sgp.tsmx.com.br/public/cobranca/79921-8MIAQSR0QV/)\\n\\nCaso precise de mais informações ou queira resolver algo relacionado a essas faturas, estou à disposição.","handoffTriggered":false,"tokensUsed":10983,"estimatedCost":0,"latencyMs":8313,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:42:36.567553746Z"},{"id":"run_30_1789425719689291484","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Financeiro","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_ms6M5BxeCUnnB33CZ7IWhuQl","toolName":"lookup_subscriber","arguments":{"query":"85920202020","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:30"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"NOT_FOUND","data":{"found":false,"totalClients":0},"userSafeMessage":"Nenhum cadastro de assinante foi localizado com os dados informados.","retryable":false,"latencyMs":266}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Não consegui localizar seu cadastro no sistema. Para que eu possa verificar as faturas em aberto, por favor, confirme o CPF do titular."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Não consegui localizar seu cadastro no sistema. Para que eu possa verificar as faturas em aberto, por favor, confirme o CPF do titular.","handoffTriggered":false,"tokensUsed":4386,"estimatedCost":0,"latencyMs":2341,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:41:59.689292963Z"},{"id":"run_30_1789425703680148190","companyId":1,"ticketId":30,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Como posso ajudar você hoje?"}],"toolsExecuted":[],"outputMessage":"Como posso ajudar você hoje?","handoffTriggered":false,"tokensUsed":2037,"estimatedCost":0,"latencyMs":5146,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:41:43.680149416Z"},{"id":"run_29_1789425601089104534","companyId":1,"ticketId":29,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_YVdybVYNgzYHLEQwG5XTLf9q","toolName":"create_sgp_precadastro","arguments":{"address":"Rua Goes Calmon","city":"Santa Cruz da Vitória","cpf_cnpj":"85949355520","name":"Victor Felipe de Assis Santos","neighborhood":"Ubaldo Brandão","notes":"Reativação do plano","number":"30","phone":"73981381860","plan_name":"200 MEGA"},"idempotencyKey":"create_sgp_precadastro:1:29"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":false,"code":"ERR_SGP_PRECADASTRO","userSafeMessage":"Não foi possível registrar o pré-cadastro no SGP no momento.","retryable":true,"latencyMs":192,"error":"SGP error 402: {\\"error\\":\\"Já existe um cliente com o CPF informado.\\"}"}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Parece que já existe um cliente cadastrado com o CPF informado, o que impede a reativação automática do plano. \\n\\nPara resolver isso, posso transferir você para um atendente humano que poderá ajudar com a reativação do seu plano. Deseja seguir por esse caminho?"}],"toolsExecuted":["create_sgp_precadastro"],"outputMessage":"Parece que já existe um cliente cadastrado com o CPF informado, o que impede a reativação automática do plano. \\n\\nPara resolver isso, posso transferir você para um atendente humano que poderá ajudar com a reativação do seu plano. Deseja seguir por esse caminho?","handoffTriggered":false,"tokensUsed":5327,"estimatedCost":0,"latencyMs":3247,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:40:01.089105414Z"},{"id":"run_29_1789425575020725934","companyId":1,"ticketId":29,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Financeiro","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_0H1Lqoiv8bA852va31K9SqDP","toolName":"lookup_subscriber","arguments":{"query":"85949355520","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:29"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"birthDate":"1998-01-10","contracts":[{"address":"RUA GOES CALMON","centralLogin":"victor","centralPassword":"assis","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/HqGkRSDsbWKxPNQ=/7c9b74f2d4c9ff6aa86cf2f602e76938/2026","emails":null,"id":138,"neighborhood":"UBALDINO BRANDAO","numero":"30","openTitlesCount":0,"openValue":0,"phones":["(73) 98138-1860"],"plan":"200 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor","pppoePassword":"assis","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"cpfCnpj":"85949355520","id":138,"name":"VICTOR FELIPE DE ASSIS SANTOS"},"contracts":[{"address":"RUA GOES CALMON","centralLogin":"victor","centralPassword":"assis","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/HqGkRSDsbWKxPNQ=/7c9b74f2d4c9ff6aa86cf2f602e76938/2026","emails":null,"id":138,"neighborhood":"UBALDINO BRANDAO","numero":"30","openTitlesCount":0,"openValue":0,"phones":["(73) 98138-1860"],"plan":"200 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor","pppoePassword":"assis","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente VICTOR FELIPE DE ASSIS SANTOS localizado com sucesso no sistema.","retryable":false,"latencyMs":1}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Não há faturas pendentes em seu nome. Para reativar seu plano de 200 MEGA, preciso registrar um pré-cadastro. \\n\\nPor favor, confirme se os dados estão corretos:\\n- Nome: Victor Felipe de Assis Santos\\n- CPF: 859.***.***-20\\n- Endereço: Rua Goes Calmon, 30, Ubaldo Brandão, Santa Cruz da Vitória - BA\\n- Telefone: (73) 98138-1860\\n\\nSe tudo estiver certo, posso prosseguir com a reativação."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Não há faturas pendentes em seu nome. Para reativar seu plano de 200 MEGA, preciso registrar um pré-cadastro. \\n\\nPor favor, confirme se os dados estão corretos:\\n- Nome: Victor Felipe de Assis Santos\\n- CPF: 859.***.***-20\\n- Endereço: Rua Goes Calmon, 30, Ubaldo Brandão, Santa Cruz da Vitória - BA\\n- Telefone: (73) 98138-1860\\n\\nSe tudo estiver certo, posso prosseguir com a reativação.","handoffTriggered":false,"tokensUsed":5332,"estimatedCost":0,"latencyMs":2523,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:39:35.02072681Z"},{"id":"run_29_1789425549000875819","companyId":1,"ticketId":29,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_B6h5OKbER52WsdGknrtq8Pny","toolName":"lookup_subscriber","arguments":{"query":"85949355520","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:29"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"birthDate":"1998-01-10","contracts":[{"address":"RUA GOES CALMON","centralLogin":"victor","centralPassword":"assis","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/HqGkRSDsbWKxPNQ=/7c9b74f2d4c9ff6aa86cf2f602e76938/2026","emails":null,"id":138,"neighborhood":"UBALDINO BRANDAO","numero":"30","openTitlesCount":0,"openValue":0,"phones":["(73) 98138-1860"],"plan":"200 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor","pppoePassword":"assis","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"cpfCnpj":"85949355520","id":138,"name":"VICTOR FELIPE DE ASSIS SANTOS"},"contracts":[{"address":"RUA GOES CALMON","centralLogin":"victor","centralPassword":"assis","cep":"45725-000","city":"SANTA CRUZ DA VITORIA","complemento":"CASA","connectionType":"PPPoE","dischargeLink":"https://hdnet.sgp.tsmx.com.br/api/declaracao/quitacao/HqGkRSDsbWKxPNQ=/7c9b74f2d4c9ff6aa86cf2f602e76938/2026","emails":null,"id":138,"neighborhood":"UBALDINO BRANDAO","numero":"30","openTitlesCount":0,"openValue":0,"phones":["(73) 98138-1860"],"plan":"200 MEGA","popId":2,"popName":"SANTA CRUZ/BA","pppoeLogin":"victor","pppoePassword":"assis","promisesCount":0,"state":"BA","status":3,"statusDisplay":"Cancelado"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente VICTOR FELIPE DE ASSIS SANTOS localizado com sucesso no sistema.","retryable":false,"latencyMs":2}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu plano de internet é o de 200 MEGA, mas atualmente está cancelado. O endereço registrado é na Rua Goes Calmon, número 30, no bairro Ubaldo Brandão, em Santa Cruz da Vitória - BA.\\n\\nSe precisar de mais informações ou quiser discutir a possibilidade de reativação do plano, estou à disposição."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Seu plano de internet é o de 200 MEGA, mas atualmente está cancelado. O endereço registrado é na Rua Goes Calmon, número 30, no bairro Ubaldo Brandão, em Santa Cruz da Vitória - BA.\\n\\nSe precisar de mais informações ou quiser discutir a possibilidade de reativação do plano, estou à disposição.","handoffTriggered":false,"tokensUsed":5197,"estimatedCost":0,"latencyMs":3908,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:39:09.000877592Z"},{"id":"run_29_1789425414537142371","companyId":1,"ticketId":29,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para verificar as informações do seu plano, preciso do seu CPF. Você pode me informar, por favor?"}],"toolsExecuted":[],"outputMessage":"Para verificar as informações do seu plano, preciso do seu CPF. Você pode me informar, por favor?","handoffTriggered":false,"tokensUsed":2129,"estimatedCost":0,"latencyMs":1245,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:36:54.537143684Z"},{"id":"run_29_1789425388272027815","companyId":1,"ticketId":29,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Como posso ajudar você?"}],"toolsExecuted":[],"outputMessage":"Como posso ajudar você?","handoffTriggered":false,"tokensUsed":2013,"estimatedCost":0,"latencyMs":7033,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-09-14T22:36:28.272029095Z"},{"id":"run_23_1788052024888851525","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Transferência para Humano","confidence":0.9,"status":"handoff","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"TIMELY","policyCompliance":true,"evaluationSummary":"Handoff para atendente humano executado com briefing estruturado."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_eIrSVvWtkvm1ZOLbhZs18xAR","toolName":"lookup_subscriber","arguments":{"query":"03697523080","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:23"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"contracts":[{"address":"Rua Jeremias Pinto, 123","centralLogin":"","centralPassword":"","cep":"90000000","city":"Porto Alegre","connectionType":"fibra","emails":["victor@hdnet.com.br"],"id":1787966370,"neighborhood":"Centro","numero":"123","openTitlesCount":0,"openValue":0,"phones":["51993032200"],"plan":"SPEED 50 MEGAS FIBRA","pppoeLogin":"victor_3080","pppoePassword":"123","promisesCount":0,"state":"RS","status":1,"statusDisplay":"Ativo"}],"cpfCnpj":"03697523080","id":66370,"name":"Victor Gabriel Duarte","phone":"51993032200"},"contracts":[{"address":"Rua Jeremias Pinto, 123","centralLogin":"","centralPassword":"","cep":"90000000","city":"Porto Alegre","connectionType":"fibra","emails":["victor@hdnet.com.br"],"id":1787966370,"neighborhood":"Centro","numero":"123","openTitlesCount":0,"openValue":0,"phones":["51993032200"],"plan":"SPEED 50 MEGAS FIBRA","pppoeLogin":"victor_3080","pppoePassword":"123","promisesCount":0,"state":"RS","status":1,"statusDisplay":"Ativo"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente Victor Gabriel Duarte localizado no cadastro local.","retryable":false,"latencyMs":6}]},{"stepIndex":2,"phase":"TOOL_CALL","toolCalls":[{"id":"call_mSiZcDx9PcvWf1kW0UKLC5HH","toolName":"handoff_to_human","arguments":{"collected_facts":{"CPF":"03697523080","Endereço":"Rua Jeremias Pinto, 123, Centro, Porto Alegre - RS","Nome":"Victor Gabriel Duarte","Plano":"SPEED 50 MEGAS FIBRA","Status":"Ativo","Telefone":"51993032200"},"reason":"Solicitação de cancelamento do plano.","suggested_action":"Dar continuidade ao processo de cancelamento.","summary":"Cliente solicitou o cancelamento do plano SPEED 50 MEGAS FIBRA.","target_queue":"Retenção"},"idempotencyKey":"handoff_to_human:1:23"}],"toolResults":[{"toolCallId":"","toolName":"handoff_to_human","success":true,"code":"OK","data":{"handoffCompleted":true,"reason":"Solicitação de cancelamento do plano.","targetQueue":"Cancelamento \\u0026 Retenção"},"userSafeMessage":"Atendimento transferido para a equipe humana com briefing completo.","retryable":false,"latencyMs":549}]},{"stepIndex":3,"phase":"RESPOND","responseChunk":"Seu pedido de cancelamento foi transferido para a equipe de Retenção. Eles vão dar continuidade ao processo e entrar em contato com você em breve. Agradeço pela sua paciência."}],"toolsExecuted":["lookup_subscriber","handoff_to_human"],"outputMessage":"Seu pedido de cancelamento foi transferido para a equipe de Retenção. Eles vão dar continuidade ao processo e entrar em contato com você em breve. Agradeço pela sua paciência.","handoffTriggered":true,"handoffReason":"Solicitação de cancelamento do plano.","tokensUsed":7822,"estimatedCost":0,"latencyMs":5327,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T01:07:04.888853312Z"},{"id":"run_23_1788052013436681238","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para prosseguir com o cancelamento, preciso que você confirme o seu desejo de cancelar o plano. Se for isso mesmo, vou localizar seu contrato e dar sequência ao processo."}],"toolsExecuted":[],"outputMessage":"Para prosseguir com o cancelamento, preciso que você confirme o seu desejo de cancelar o plano. Se for isso mesmo, vou localizar seu contrato e dar sequência ao processo.","handoffTriggered":false,"tokensUsed":2303,"estimatedCost":0,"latencyMs":1736,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T01:06:53.436684562Z"},{"id":"run_23_1788051942932135818","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Transferência para Humano","confidence":0.9,"status":"handoff","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"TIMELY","policyCompliance":true,"evaluationSummary":"Handoff para atendente humano executado com briefing estruturado."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_0ZBTlj699m94SV1Oh4JcUuNj","toolName":"handoff_to_human","arguments":{"collected_facts":{"cpf":"03697523080","endereco":"Rua Jeremias Pinto, 123, Centro, Porto Alegre - RS","nome":"Victor Gabriel Duarte","plano":"SPEED 50 MEGAS FIBRA","telefone":"51993032200"},"reason":"Solicitação expressa do cliente para cancelamento.","suggested_action":"Dar continuidade ao processo de cancelamento.","summary":"Cliente Victor Gabriel Duarte solicitou cancelamento do plano SPEED 50 MEGAS FIBRA devido à insatisfação com o suporte.","target_queue":"Retenção"},"idempotencyKey":"handoff_to_human:1:23"}],"toolResults":[{"toolCallId":"","toolName":"handoff_to_human","success":true,"code":"OK","data":{"handoffCompleted":true,"reason":"Solicitação expressa do cliente para cancelamento.","targetQueue":"Cancelamento \\u0026 Retenção"},"userSafeMessage":"Atendimento transferido para a equipe humana com briefing completo.","retryable":false,"latencyMs":26}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu atendimento foi transferido para a equipe de Cancelamento e Retenção. Eles terão todas as informações necessárias para dar continuidade ao seu pedido. \\n\\nAgradeço pela sua paciência e espero que a situação seja resolvida da melhor forma possível."}],"toolsExecuted":["handoff_to_human"],"outputMessage":"Seu atendimento foi transferido para a equipe de Cancelamento e Retenção. Eles terão todas as informações necessárias para dar continuidade ao seu pedido. \\n\\nAgradeço pela sua paciência e espero que a situação seja resolvida da melhor forma possível.","handoffTriggered":true,"handoffReason":"Solicitação expressa do cliente para cancelamento.","tokensUsed":5006,"estimatedCost":0,"latencyMs":2583,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T01:05:42.932137632Z"},{"id":"run_23_1788051928470526704","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Se você deseja seguir com o cancelamento, posso prosseguir com o processo. Por favor, confirme se é isso que você deseja ou se prefere explorar outras opções, como um teste técnico ou uma revisão dos planos disponíveis."}],"toolsExecuted":[],"outputMessage":"Se você deseja seguir com o cancelamento, posso prosseguir com o processo. Por favor, confirme se é isso que você deseja ou se prefere explorar outras opções, como um teste técnico ou uma revisão dos planos disponíveis.","handoffTriggered":false,"tokensUsed":2330,"estimatedCost":0,"latencyMs":3232,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T01:05:28.470530487Z"},{"id":"run_23_1788051529875244377","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Entendo sua insatisfação e lamento que a experiência não tenha sido a esperada. Para que possamos resolver isso, você gostaria de tentar um teste técnico ou discutir opções de planos que possam ser mais adequados para você?"}],"toolsExecuted":[],"outputMessage":"Entendo sua insatisfação e lamento que a experiência não tenha sido a esperada. Para que possamos resolver isso, você gostaria de tentar um teste técnico ou discutir opções de planos que possam ser mais adequados para você?","handoffTriggered":false,"tokensUsed":2491,"estimatedCost":0,"latencyMs":2313,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:58:49.875246887Z"},{"id":"run_23_1788051469567821425","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_hstVrAn6p5UN7C4A1Tadvj3I","toolName":"lookup_subscriber","arguments":{"query":"03697523080","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:23"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"OK","data":{"client":{"contracts":[{"address":"Rua Jeremias Pinto, 123","centralLogin":"","centralPassword":"","cep":"90000000","city":"Porto Alegre","connectionType":"fibra","emails":["victor@hdnet.com.br"],"id":1787966370,"neighborhood":"Centro","numero":"123","openTitlesCount":0,"openValue":0,"phones":["51993032200"],"plan":"SPEED 50 MEGAS FIBRA","pppoeLogin":"victor_3080","pppoePassword":"123","promisesCount":0,"state":"RS","status":1,"statusDisplay":"Ativo"}],"cpfCnpj":"03697523080","id":66370,"name":"Victor Gabriel Duarte","phone":"51993032200"},"contracts":[{"address":"Rua Jeremias Pinto, 123","centralLogin":"","centralPassword":"","cep":"90000000","city":"Porto Alegre","connectionType":"fibra","emails":["victor@hdnet.com.br"],"id":1787966370,"neighborhood":"Centro","numero":"123","openTitlesCount":0,"openValue":0,"phones":["51993032200"],"plan":"SPEED 50 MEGAS FIBRA","pppoeLogin":"victor_3080","pppoePassword":"123","promisesCount":0,"state":"RS","status":1,"statusDisplay":"Ativo"}],"found":true,"totalClients":1},"userSafeMessage":"Cliente Victor Gabriel Duarte localizado no cadastro local.","retryable":false,"latencyMs":1}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Encontrei seu cadastro! Aqui estão os detalhes:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-80\\n- **Plano:** SPEED 50 MEGAS FIBRA\\n- **Endereço:** Rua Jeremias Pinto, 123, Centro, Porto Alegre - RS\\n- **Telefone:** 519.***.***-00\\n\\nQual o motivo do cancelamento? Se for por problemas técnicos, posso oferecer um teste imediato ou uma visita técnica gratuita. Se for por questões financeiras, posso apresentar planos mais adequados."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Encontrei seu cadastro! Aqui estão os detalhes:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-80\\n- **Plano:** SPEED 50 MEGAS FIBRA\\n- **Endereço:** Rua Jeremias Pinto, 123, Centro, Porto Alegre - RS\\n- **Telefone:** 519.***.***-00\\n\\nQual o motivo do cancelamento? Se for por problemas técnicos, posso oferecer um teste imediato ou uma visita técnica gratuita. Se for por questões financeiras, posso apresentar planos mais adequados.","handoffTriggered":false,"tokensUsed":5150,"estimatedCost":0,"latencyMs":3666,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:57:49.567824859Z"},{"id":"run_23_1788051277356176746","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_EeGprApObrFJDhDv06tulOHZ","toolName":"lookup_subscriber","arguments":{"query":"03697523080","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:23"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"NOT_FOUND","data":{"found":false,"totalClients":0},"userSafeMessage":"Nenhum cadastro de assinante foi localizado com os dados informados.","retryable":false,"latencyMs":5}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Ainda não consegui encontrar um cadastro com o CPF 036.***.***-80. É possível que o titular da conta tenha um CPF diferente ou que o cadastro não esteja ativo. \\n\\nSe você estiver tentando cancelar um plano, poderia me informar o nome completo e o endereço de instalação? Isso pode ajudar a localizar a conta."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Ainda não consegui encontrar um cadastro com o CPF 036.***.***-80. É possível que o titular da conta tenha um CPF diferente ou que o cadastro não esteja ativo. \\n\\nSe você estiver tentando cancelar um plano, poderia me informar o nome completo e o endereço de instalação? Isso pode ajudar a localizar a conta.","handoffTriggered":false,"tokensUsed":4287,"estimatedCost":0,"latencyMs":2363,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:54:37.356180546Z"},{"id":"run_23_1788051265339629269","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_KdUC0a1WmxivCWovExl3fYwn","toolName":"lookup_subscriber","arguments":{"query":"03697523080","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:23"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"NOT_FOUND","data":{"found":false,"totalClients":0},"userSafeMessage":"Nenhum cadastro de assinante foi localizado com os dados informados.","retryable":false,"latencyMs":1}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Não consegui localizar um cadastro com o CPF informado. Você poderia confirmar se os dados estão corretos ou se há algum outro CPF que possa estar vinculado à conta?"}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Não consegui localizar um cadastro com o CPF informado. Você poderia confirmar se os dados estão corretos ou se há algum outro CPF que possa estar vinculado à conta?","handoffTriggered":false,"tokensUsed":4167,"estimatedCost":0,"latencyMs":2708,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:54:25.339633116Z"},{"id":"run_23_1788051256004395927","companyId":1,"ticketId":23,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para prosseguir com o cancelamento, preciso do CPF do titular da conta. Poderia me informar, por favor?"}],"toolsExecuted":[],"outputMessage":"Para prosseguir com o cancelamento, preciso do CPF do titular da conta. Poderia me informar, por favor?","handoffTriggered":false,"tokensUsed":2004,"estimatedCost":0,"latencyMs":2638,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:54:16.004397265Z"},{"id":"run_22_1788049995957537521","companyId":1,"ticketId":22,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"GOOD","score":3.5,"customerSentimentAfter":"FRUSTRATED","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_L8M6Zd6lwFkUVzck44UvKJuV","toolName":"lookup_subscriber","arguments":{"query":"03697523080","query_type":"cpf"},"idempotencyKey":"lookup_subscriber:1:22"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":false,"code":"ERR_SGP_UNAVAILABLE","userSafeMessage":"O sistema de cadastro da operadora está temporariamente indisponível.","retryable":true,"latencyMs":232,"error":"SGP (403): As credenciais de autenticação não foram fornecidas."}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Parece que o sistema está temporariamente indisponível e não consegui acessar suas informações. Para continuar com o cancelamento, você pode entrar em contato diretamente com a nossa equipe de atendimento humano. Vou transferir sua solicitação para que eles possam te ajudar. Um momento, por favor."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Parece que o sistema está temporariamente indisponível e não consegui acessar suas informações. Para continuar com o cancelamento, você pode entrar em contato diretamente com a nossa equipe de atendimento humano. Vou transferir sua solicitação para que eles possam te ajudar. Um momento, por favor.","handoffTriggered":false,"tokensUsed":3968,"estimatedCost":0,"latencyMs":3147,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:33:15.957541041Z"},{"id":"run_22_1788049977347366357","companyId":1,"ticketId":22,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para prosseguir com o cancelamento, preciso de algumas informações. Por favor, informe seu nome completo e o telefone associado à sua conta."}],"toolsExecuted":[],"outputMessage":"Para prosseguir com o cancelamento, preciso de algumas informações. Por favor, informe seu nome completo e o telefone associado à sua conta.","handoffTriggered":false,"tokensUsed":1885,"estimatedCost":0,"latencyMs":3164,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-30T00:32:57.347369673Z"},{"id":"run_12_1787974029134541589","companyId":1,"ticketId":12,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_IhG2q3DvJEhPIlRu1QeHby7U","toolName":"lookup_subscriber","arguments":{"query":"555193032200","query_type":"telefone"},"idempotencyKey":"lookup_subscriber:1:12"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"NOT_FOUND","data":{"found":false,"totalClients":0},"userSafeMessage":"Nenhum cadastro de assinante foi localizado com os dados informados.","retryable":false,"latencyMs":1}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Não consegui localizar seu cadastro no sistema. Pode ser que você ainda não seja assinante. Se desejar, posso te ajudar a fazer um pré-cadastro para contratar um plano."}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Não consegui localizar seu cadastro no sistema. Pode ser que você ainda não seja assinante. Se desejar, posso te ajudar a fazer um pré-cadastro para contratar um plano.","handoffTriggered":false,"tokensUsed":3693,"estimatedCost":0,"latencyMs":2111,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T03:27:09.134543617Z"},{"id":"run_7_1787968442501218809","companyId":1,"ticketId":7,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_ARLcnVBlciTwNMlhg1TqiZYb","toolName":"create_sgp_precadastro","arguments":{"address":"rua Jeremias pinto kkkk","city":"não informado","cpf_cnpj":"03697523080","name":"Victor Gabriel Duarte","number":"123","phone":"51993032200","plan_name":"3MB"},"idempotencyKey":"create_sgp_precadastro:1:7"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":true,"code":"OK","data":{"name":"Victor Gabriel Duarte","plan":"3MB","sgpResponse":{"id":1787968443,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787968443","status":"success"},"status":"success"},"userSafeMessage":"Pré-cadastro registrado com sucesso no ERP SGP.","retryable":false,"latencyMs":108}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu pré-cadastro foi registrado com sucesso! Aqui estão os detalhes:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-80\\n- **Endereço:** Rua Jeremias Pinto Kkkk, 123\\n- **Telefone:** 519.***.***-00\\n- **Plano:** 3MB\\n\\n**Protocolo:** PRE-1787968443\\n\\nA equipe técnica entrará em contato em breve para agendar a instalação. Se precisar de mais alguma coisa, é só avisar!"}],"toolsExecuted":["create_sgp_precadastro"],"outputMessage":"Seu pré-cadastro foi registrado com sucesso! Aqui estão os detalhes:\\n\\n- **Nome:** Victor Gabriel Duarte\\n- **CPF:** 036.***.***-80\\n- **Endereço:** Rua Jeremias Pinto Kkkk, 123\\n- **Telefone:** 519.***.***-00\\n- **Plano:** 3MB\\n\\n**Protocolo:** PRE-1787968443\\n\\nA equipe técnica entrará em contato em breve para agendar a instalação. Se precisar de mais alguma coisa, é só avisar!","handoffTriggered":false,"tokensUsed":5658,"estimatedCost":0,"latencyMs":3122,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T01:54:02.501221059Z"},{"id":"run_7_1787968420553699430","companyId":1,"ticketId":7,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"O plano mais barato disponível é o **3MB**, que oferece:\\n\\n- Download: 3 Mbps\\n- Upload: 2 Mbps\\n- Valor: R$ 90,00\\n\\nSe você quiser seguir com esse plano, por favor, me forneça as seguintes informações para o pré-cadastro:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (com número)\\n4. Telefone\\n\\nAssim, posso registrar seu pedido e a equipe técnica entrará em contato para agendar a instalação."}],"toolsExecuted":[],"outputMessage":"O plano mais barato disponível é o **3MB**, que oferece:\\n\\n- Download: 3 Mbps\\n- Upload: 2 Mbps\\n- Valor: R$ 90,00\\n\\nSe você quiser seguir com esse plano, por favor, me forneça as seguintes informações para o pré-cadastro:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (com número)\\n4. Telefone\\n\\nAssim, posso registrar seu pedido e a equipe técnica entrará em contato para agendar a instalação.","handoffTriggered":false,"tokensUsed":2496,"estimatedCost":0,"latencyMs":1505,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T01:53:40.553701782Z"},{"id":"run_7_1787968397877248090","companyId":1,"ticketId":7,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_OXLW9e7EGNqON3hITwNeQVu7","toolName":"list_isp_plans","arguments":{},"idempotencyKey":"list_isp_plans:1:7"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":10240,"id":16,"nome":"10 MEGAS Pós-Pago sem Fidelidade","upload_kbps":5120,"valor_mensal":"R$ 200.00"},{"download_kbps":3,"id":52,"nome":"3MB","upload_kbps":2,"valor_mensal":"R$ 90.00"},{"download_kbps":51200,"id":125,"nome":"*50MB RÁDIO RURAL","upload_kbps":25600,"valor_mensal":"R$ 59.99"},{"download_kbps":10485760,"id":38,"nome":"Internet Rural 10MB","upload_kbps":10485760,"valor_mensal":"R$ 200.00"},{"download_kbps":122880,"id":133,"nome":"plano 120 megas","upload_kbps":122880,"valor_mensal":"R$ 100.00"},{"download_kbps":4900,"id":35,"nome":"Plano 5mb","upload_kbps":5900,"valor_mensal":"R$ 59.90"},{"download_kbps":0,"id":75,"nome":"plano 60mb espigao","upload_kbps":0,"valor_mensal":"R$ 99.90"},{"download_kbps":8000,"id":115,"nome":"PLANO 8 MEGAS","upload_kbps":8000,"valor_mensal":"R$ 120.00"},{"download_kbps":17408,"id":76,"nome":"plano rural guavira","upload_kbps":10240,"valor_mensal":"R$ 99.90"},{"download_kbps":10240,"id":166,"nome":"PLANOS DE10 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":10240,"valor_mensal":"R$ 59.90"},{"download_kbps":15360,"id":167,"nome":"PLANOS DE15 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":15360,"valor_mensal":"R$ 69.90"},{"download_kbps":20480,"id":168,"nome":"PLANOS DE20 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":20480,"valor_mensal":"R$ 79.90"}],"totalNoSgp":248},"userSafeMessage":"Foram localizados 12 planos oficiais no ERP SGP.","retryable":false,"latencyMs":1324}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Aqui estão os planos disponíveis:\\n\\n1. **10 MEGAS Pós-Pago sem Fidelidade**  \\n   - Download: 10 Mbps  \\n   - Upload: 5 Mbps  \\n   - Valor: R$ 200,00  \\n\\n2. **3MB**  \\n   - Download: 3 Mbps  \\n   - Upload: 2 Mbps  \\n   - Valor: R$ 90,00  \\n\\n3. **50MB RÁDIO RURAL**  \\n   - Download: 50 Mbps  \\n   - Upload: 25 Mbps  \\n   - Valor: R$ 59,99  \\n\\n4. **Internet Rural 10MB**  \\n   - Download: 10 Mbps  \\n   - Upload: 10 Mbps  \\n   - Valor: R$ 200,00  \\n\\n5. **plano 120 megas**  \\n   - Download: 120 Mbps  \\n   - Upload: 120 Mbps  \\n   - Valor: R$ 100,00  \\n\\n6. **Plano 5mb**  \\n   - Download: 5 Mbps  \\n   - Upload: 5.9 Mbps  \\n   - Valor: R$ 59,90  \\n\\n7. **plano 60mb espigao**  \\n   - Download: 60 Mbps  \\n   - Upload: Não especificado  \\n   - Valor: R$ 99,90  \\n\\n8. **PLANO 8 MEGAS**  \\n   - Download: 8 Mbps  \\n   - Upload: 8 Mbps  \\n   - Valor: R$ 120,00  \\n\\n9. **plano rural guavira**  \\n   - Download: 17.4 Mbps  \\n   - Upload: 10.2 Mbps  \\n   - Valor: R$ 99,90  \\n\\n10. **PLANOS DE10 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 10 Mbps  \\n    - Upload: 10 Mbps  \\n    - Valor: R$ 59,90  \\n\\n11. **PLANOS DE15 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 15 Mbps  \\n    - Upload: 15 Mbps  \\n    - Valor: R$ 69,90  \\n\\n12. **PLANOS DE20 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 20 Mbps  \\n    - Upload: 20 Mbps  \\n    - Valor: R$ 79,90  \\n\\nSe você estiver interessado em algum plano ou precisar de mais informações, é só avisar!"}],"toolsExecuted":["list_isp_plans"],"outputMessage":"Aqui estão os planos disponíveis:\\n\\n1. **10 MEGAS Pós-Pago sem Fidelidade**  \\n   - Download: 10 Mbps  \\n   - Upload: 5 Mbps  \\n   - Valor: R$ 200,00  \\n\\n2. **3MB**  \\n   - Download: 3 Mbps  \\n   - Upload: 2 Mbps  \\n   - Valor: R$ 90,00  \\n\\n3. **50MB RÁDIO RURAL**  \\n   - Download: 50 Mbps  \\n   - Upload: 25 Mbps  \\n   - Valor: R$ 59,99  \\n\\n4. **Internet Rural 10MB**  \\n   - Download: 10 Mbps  \\n   - Upload: 10 Mbps  \\n   - Valor: R$ 200,00  \\n\\n5. **plano 120 megas**  \\n   - Download: 120 Mbps  \\n   - Upload: 120 Mbps  \\n   - Valor: R$ 100,00  \\n\\n6. **Plano 5mb**  \\n   - Download: 5 Mbps  \\n   - Upload: 5.9 Mbps  \\n   - Valor: R$ 59,90  \\n\\n7. **plano 60mb espigao**  \\n   - Download: 60 Mbps  \\n   - Upload: Não especificado  \\n   - Valor: R$ 99,90  \\n\\n8. **PLANO 8 MEGAS**  \\n   - Download: 8 Mbps  \\n   - Upload: 8 Mbps  \\n   - Valor: R$ 120,00  \\n\\n9. **plano rural guavira**  \\n   - Download: 17.4 Mbps  \\n   - Upload: 10.2 Mbps  \\n   - Valor: R$ 99,90  \\n\\n10. **PLANOS DE10 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 10 Mbps  \\n    - Upload: 10 Mbps  \\n    - Valor: R$ 59,90  \\n\\n11. **PLANOS DE15 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 15 Mbps  \\n    - Upload: 15 Mbps  \\n    - Valor: R$ 69,90  \\n\\n12. **PLANOS DE20 MEGAS VIA RADIO- NETVIP TELECOM**  \\n    - Download: 20 Mbps  \\n    - Upload: 20 Mbps  \\n    - Valor: R$ 79,90  \\n\\nSe você estiver interessado em algum plano ou precisar de mais informações, é só avisar!","handoffTriggered":false,"tokensUsed":4819,"estimatedCost":0,"latencyMs":7349,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T01:53:17.877249674Z"},{"id":"run_7_1787968380387789703","companyId":1,"ticketId":7,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Suporte Técnico / Queda","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_23mbpC735pk1yJWi4UIe8pS0","toolName":"check_internet_status","arguments":{},"idempotencyKey":"check_internet_status:1:7"}],"toolResults":[{"toolCallId":"","toolName":"check_internet_status","success":true,"code":"OK","data":{"connectionChecked":false,"connectionOk":false,"contractOk":false,"financialOk":false,"onuChecked":false,"onuOnline":false,"regionalIncidents":0,"signalChecked":false,"signalDbm":0,"signalGrade":"","status":"unknown","suggestion":"Diagnóstico aplicável para assinantes com contrato e login PPPoE ativos no ERP.","summary":"Contato sem contrato de internet ativo vinculado."},"userSafeMessage":"Status da conexão obtido com sucesso em tempo real.","retryable":false,"latencyMs":0}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Parece que não encontramos um contrato de internet ativo vinculado ao seu número. Para resolver isso, preciso que você me forneça algumas informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (com número)\\n4. Telefone\\n5. Plano desejado (se já souber)\\n\\nAssim, posso registrar seu pré-cadastro e ajudar a solucionar a questão da internet."}],"toolsExecuted":["check_internet_status"],"outputMessage":"Parece que não encontramos um contrato de internet ativo vinculado ao seu número. Para resolver isso, preciso que você me forneça algumas informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (com número)\\n4. Telefone\\n5. Plano desejado (se já souber)\\n\\nAssim, posso registrar seu pré-cadastro e ajudar a solucionar a questão da internet.","handoffTriggered":false,"tokensUsed":4039,"estimatedCost":0,"latencyMs":3166,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T01:53:00.387792876Z"},{"id":"run_6_1787966336541721557","companyId":1,"ticketId":6,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Suporte Técnico / Queda","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_0fcpP7NE6u1eJF9ODPTUCdRz","toolName":"check_internet_status","arguments":{},"idempotencyKey":"check_internet_status:1:6"}],"toolResults":[{"toolCallId":"","toolName":"check_internet_status","success":true,"code":"OK","data":{"connectionChecked":false,"connectionOk":false,"contractOk":false,"financialOk":false,"onuChecked":false,"onuOnline":false,"regionalIncidents":0,"signalChecked":false,"signalDbm":0,"signalGrade":"","status":"unknown","suggestion":"Diagnóstico aplicável para assinantes com contrato e login PPPoE ativos no ERP.","summary":"Contato sem contrato de internet ativo vinculado."},"userSafeMessage":"Status da conexão obtido com sucesso em tempo real.","retryable":false,"latencyMs":1}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Parece que não há um contrato de internet ativo vinculado ao seu número. Isso pode ser a razão pela qual sua conexão não está funcionando.\\n\\nSe você é um novo cliente ou deseja contratar um plano, posso ajudar com o pré-cadastro. Caso contrário, se você já é assinante, por favor, verifique se está utilizando o número correto ou entre em contato com a equipe de atendimento."}],"toolsExecuted":["check_internet_status"],"outputMessage":"Parece que não há um contrato de internet ativo vinculado ao seu número. Isso pode ser a razão pela qual sua conexão não está funcionando.\\n\\nSe você é um novo cliente ou deseja contratar um plano, posso ajudar com o pré-cadastro. Caso contrário, se você já é assinante, por favor, verifique se está utilizando o número correto ou entre em contato com a equipe de atendimento.","handoffTriggered":false,"tokensUsed":4047,"estimatedCost":0,"latencyMs":2413,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T01:18:56.541723647Z"},{"id":"run_5_1787964801029462280","companyId":1,"ticketId":5,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_mHYN9zYooNjTaQbIZHGeTqJw","toolName":"create_sgp_precadastro","arguments":{"address":"rua Jeremias pinto kkkk","city":"não informado","cpf_cnpj":"03697523080","name":"Victor Gabriel Duarte","number":"123","phone":"51993032200","plan_id":1,"plan_name":"Plano 5mb","state":"não informado"},"idempotencyKey":"create_sgp_precadastro:1:5"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":true,"code":"OK","data":{"name":"Victor Gabriel Duarte","plan":"Plano 5mb","sgpResponse":{"id":1787964802,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787964802","status":"success"},"status":"success"},"userSafeMessage":"Pré-cadastro registrado com sucesso no ERP SGP.","retryable":false,"latencyMs":104}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu pré-cadastro foi registrado com sucesso! Você escolheu o \\"Plano 5mb\\". \\n\\nA equipe entrará em contato em breve para agendar a instalação. \\n\\nSe precisar de mais alguma coisa, é só avisar!"}],"toolsExecuted":["create_sgp_precadastro"],"outputMessage":"Seu pré-cadastro foi registrado com sucesso! Você escolheu o \\"Plano 5mb\\". \\n\\nA equipe entrará em contato em breve para agendar a instalação. \\n\\nSe precisar de mais alguma coisa, é só avisar!","handoffTriggered":false,"tokensUsed":4362,"estimatedCost":0,"latencyMs":2541,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:53:21.02946429Z"},{"id":"run_5_1787964773250075191","companyId":1,"ticketId":5,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_wDFOcSNhhRuJJs32mLe2xN3O","toolName":"list_isp_plans","arguments":{},"idempotencyKey":"list_isp_plans:1:5"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":10240,"id":16,"nome":"10 MEGAS Pós-Pago sem Fidelidade","upload_kbps":5120,"valor_mensal":"R$ 200.00"},{"download_kbps":3,"id":52,"nome":"3MB","upload_kbps":2,"valor_mensal":"R$ 90.00"},{"download_kbps":51200,"id":125,"nome":"*50MB RÁDIO RURAL","upload_kbps":25600,"valor_mensal":"R$ 59.99"},{"download_kbps":10485760,"id":38,"nome":"Internet Rural 10MB","upload_kbps":10485760,"valor_mensal":"R$ 200.00"},{"download_kbps":122880,"id":133,"nome":"plano 120 megas","upload_kbps":122880,"valor_mensal":"R$ 100.00"},{"download_kbps":4900,"id":35,"nome":"Plano 5mb","upload_kbps":5900,"valor_mensal":"R$ 59.90"},{"download_kbps":0,"id":75,"nome":"plano 60mb espigao","upload_kbps":0,"valor_mensal":"R$ 99.90"},{"download_kbps":8000,"id":115,"nome":"PLANO 8 MEGAS","upload_kbps":8000,"valor_mensal":"R$ 120.00"},{"download_kbps":17408,"id":76,"nome":"plano rural guavira","upload_kbps":10240,"valor_mensal":"R$ 99.90"},{"download_kbps":10240,"id":166,"nome":"PLANOS DE10 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":10240,"valor_mensal":"R$ 59.90"},{"download_kbps":15360,"id":167,"nome":"PLANOS DE15 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":15360,"valor_mensal":"R$ 69.90"},{"download_kbps":20480,"id":168,"nome":"PLANOS DE20 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":20480,"valor_mensal":"R$ 79.90"}],"totalNoSgp":248},"userSafeMessage":"Foram localizados 12 planos oficiais no ERP SGP.","retryable":false,"latencyMs":102}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"O plano mais barato disponível é o \\"Plano 5mb\\", com as seguintes características:\\n\\n- **Velocidade**: 5 Mbps de download e 5.9 Mbps de upload\\n- **Valor mensal**: R$ 59,90\\n\\nPara realizar a contratação, preciso dos seguintes dados:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço (com número e bairro)\\n4. Telefone/WhatsApp\\n5. Plano desejado (confirmando o \\"Plano 5mb\\")\\n\\nAssim que receber essas informações, farei o pré-cadastro para você."}],"toolsExecuted":["list_isp_plans"],"outputMessage":"O plano mais barato disponível é o \\"Plano 5mb\\", com as seguintes características:\\n\\n- **Velocidade**: 5 Mbps de download e 5.9 Mbps de upload\\n- **Valor mensal**: R$ 59,90\\n\\nPara realizar a contratação, preciso dos seguintes dados:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço (com número e bairro)\\n4. Telefone/WhatsApp\\n5. Plano desejado (confirmando o \\"Plano 5mb\\")\\n\\nAssim que receber essas informações, farei o pré-cadastro para você.","handoffTriggered":false,"tokensUsed":4168,"estimatedCost":0,"latencyMs":3453,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:52:53.25007628Z"},{"id":"run_2_1787964612445443552","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"RESPOND","responseChunk":"Para realizar seu cadastro, preciso das seguintes informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (incluindo número, cidade e estado)\\n4. Telefone para contato\\n5. Plano desejado (se já tiver em mente)\\n\\nCom esses dados, posso iniciar o processo de cadastro para você!"}],"toolsExecuted":[],"outputMessage":"Para realizar seu cadastro, preciso das seguintes informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (incluindo número, cidade e estado)\\n4. Telefone para contato\\n5. Plano desejado (se já tiver em mente)\\n\\nCom esses dados, posso iniciar o processo de cadastro para você!","handoffTriggered":false,"tokensUsed":2279,"estimatedCost":0,"latencyMs":2895,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:50:12.445444395Z"},{"id":"run_2_1787963983319862485","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_O5UnlVXWh6SqWTakFSc0zY3D","toolName":"list_isp_plans","arguments":{"filter":"120"},"idempotencyKey":"list_isp_plans:1:2"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":122880,"id":133,"nome":"plano 120 megas","upload_kbps":122880,"valor_mensal":"R$ 100.00"},{"download_kbps":133120,"id":111,"nome":"Plano Fibra 120","upload_kbps":61440,"valor_mensal":"R$ 109.90"}],"totalNoSgp":248},"userSafeMessage":"Foram localizados 2 planos oficiais no ERP SGP.","retryable":false,"latencyMs":102}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Existem dois planos de 120 megas disponíveis:\\n\\n1. **Plano 120 megas**\\n   - Velocidade de download: 120 Mbps\\n   - Velocidade de upload: 120 Mbps\\n   - Valor mensal: R$ 100,00\\n\\n2. **Plano Fibra 120**\\n   - Velocidade de download: 133,12 Mbps\\n   - Velocidade de upload: 61,44 Mbps\\n   - Valor mensal: R$ 109,90\\n\\nSe precisar de mais informações ou quiser contratar um desses planos, é só avisar!"}],"toolsExecuted":["list_isp_plans"],"outputMessage":"Existem dois planos de 120 megas disponíveis:\\n\\n1. **Plano 120 megas**\\n   - Velocidade de download: 120 Mbps\\n   - Velocidade de upload: 120 Mbps\\n   - Valor mensal: R$ 100,00\\n\\n2. **Plano Fibra 120**\\n   - Velocidade de download: 133,12 Mbps\\n   - Velocidade de upload: 61,44 Mbps\\n   - Valor mensal: R$ 109,90\\n\\nSe precisar de mais informações ou quiser contratar um desses planos, é só avisar!","handoffTriggered":false,"tokensUsed":4434,"estimatedCost":0,"latencyMs":4106,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:39:43.319864568Z"},{"id":"run_2_1787963819346342832","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Comercial / Vendas","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"POSITIVE","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_HLB51xRRuUUkus5k78gXwGT1","toolName":"create_sgp_precadastro","arguments":{"address":"Rua Jeremias Pinto 123","city":"Porto Alegre","cpf_cnpj":"03697523080","name":"Victor Gabriel Duarte","number":"123","phone":"51993032200","plan_name":"3MB","state":"RS"},"idempotencyKey":"create_sgp_precadastro:1:2"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":true,"code":"OK","data":{"name":"Victor Gabriel Duarte","plan":"3MB","sgpResponse":{"id":1787963821,"mensagem":"Pré-cadastro registrado com sucesso no SGP (Ambiente de Demonstração)","protocolo":"PRE-1787963821","status":"success"},"status":"success"},"userSafeMessage":"Pré-cadastro registrado com sucesso no ERP SGP.","retryable":false,"latencyMs":432}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Seu pré-cadastro foi registrado com sucesso! Você escolheu o plano de 3MB. A equipe entrará em contato em breve para agendar a instalação. \\n\\nSe precisar de mais alguma informação, estou à disposição!"}],"toolsExecuted":["create_sgp_precadastro"],"outputMessage":"Seu pré-cadastro foi registrado com sucesso! Você escolheu o plano de 3MB. A equipe entrará em contato em breve para agendar a instalação. \\n\\nSe precisar de mais alguma informação, estou à disposição!","handoffTriggered":false,"tokensUsed":4636,"estimatedCost":0,"latencyMs":2593,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:36:59.346344455Z"},{"id":"run_2_1787963783748138788","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Transferência para Humano","confidence":0.9,"status":"handoff","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"TIMELY","policyCompliance":true,"evaluationSummary":"Handoff para atendente humano executado com briefing estruturado."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_uid4EUsvt3jHTFInqcyJy8Q0","toolName":"create_sgp_precadastro","arguments":{"address":"Rua Jeremias Pinto","city":"Porto Alegre","cpf_cnpj":"03697523080","name":"Victor Gabriel Duarte","number":"123","phone":"51993032200","plan_name":"3MB","state":"RS"},"idempotencyKey":"create_sgp_precadastro:1:2"}],"toolResults":[{"toolCallId":"","toolName":"create_sgp_precadastro","success":false,"code":"ERR_SGP_PRECADASTRO","userSafeMessage":"Não foi possível registrar o pré-cadastro no SGP no momento.","retryable":true,"latencyMs":122,"error":"SGP (403): As credenciais de autenticação não foram fornecidas."}]},{"stepIndex":2,"phase":"TOOL_CALL","toolCalls":[{"id":"call_yyPuOctkkpm7a8E6h4hlUTId","toolName":"handoff_to_human","arguments":{"reason":"Registro de pré-cadastro para contratação de plano de internet.","suggested_action":"Finalizar o pré-cadastro do cliente.","summary":"Cliente Victor Gabriel Duarte deseja contratar o plano de 3MB. Dados fornecidos: CPF: 03697523080, Endereço: Rua Jeremias Pinto 123, Porto Alegre RS, Telefone: 51993032200.","target_queue":"Comercial"},"idempotencyKey":"handoff_to_human:1:2"}],"toolResults":[{"toolCallId":"","toolName":"handoff_to_human","success":true,"code":"OK","data":{"handoffCompleted":true,"reason":"Registro de pré-cadastro para contratação de plano de internet.","targetQueue":"Comercial \\u0026 Novos Planos"},"userSafeMessage":"Atendimento transferido para a equipe humana com briefing completo.","retryable":false,"latencyMs":20}]},{"stepIndex":3,"phase":"RESPOND","responseChunk":"Sua solicitação foi transferida para a equipe humana, que irá ajudá-lo a concluir o pré-cadastro para o plano de 3MB. Eles entrarão em contato em breve para finalizar o processo."}],"toolsExecuted":["create_sgp_precadastro","handoff_to_human"],"outputMessage":"Sua solicitação foi transferida para a equipe humana, que irá ajudá-lo a concluir o pré-cadastro para o plano de 3MB. Eles entrarão em contato em breve para finalizar o processo.","handoffTriggered":true,"handoffReason":"Registro de pré-cadastro para contratação de plano de internet.","tokensUsed":7845,"estimatedCost":0,"latencyMs":4766,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:36:23.748141904Z"},{"id":"run_2_1787963606521454111","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_hg0WnKps5SoSwk6pfIusrXsa","toolName":"lookup_subscriber","arguments":{"query":"51993032200","query_type":"telefone"},"idempotencyKey":"lookup_subscriber:1:2"}],"toolResults":[{"toolCallId":"","toolName":"lookup_subscriber","success":true,"code":"NOT_FOUND","data":{"found":false,"totalClients":0},"userSafeMessage":"Nenhum cadastro de assinante foi localizado com os dados informados.","retryable":false,"latencyMs":323}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"Parece que não encontrei um cadastro associado ao seu número. Para prosseguir com a contratação do plano de 3MB, preciso que você confirme o endereço completo, incluindo a cidade e o estado. Além disso, você pode me informar se há algum outro número de telefone ou e-mail que gostaria de usar para contato?"}],"toolsExecuted":["lookup_subscriber"],"outputMessage":"Parece que não encontrei um cadastro associado ao seu número. Para prosseguir com a contratação do plano de 3MB, preciso que você confirme o endereço completo, incluindo a cidade e o estado. Além disso, você pode me informar se há algum outro número de telefone ou e-mail que gostaria de usar para contato?","handoffTriggered":false,"tokensUsed":4463,"estimatedCost":0,"latencyMs":2483,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:33:26.521456589Z"},{"id":"run_2_1787963575528476997","companyId":1,"ticketId":2,"contactId":2,"contactName":"Victor","contactNumber":"555193032200","channel":"whatsmeow","intentDetected":"Atendimento Geral","confidence":0.9,"status":"success","quality":{"resolutionQuality":"EXCELLENT","score":5,"customerSentimentAfter":"NEUTRAL","toolEfficiency":1,"unnecessaryToolCalls":0,"handoffQuality":"NOT_NEEDED","policyCompliance":true,"evaluationSummary":"Atendimento concluído com conformidade e eficiência."},"steps":[{"stepIndex":1,"phase":"TOOL_CALL","toolCalls":[{"id":"call_9M4l1KXlazMvNprUItzuatMh","toolName":"list_isp_plans","arguments":{},"idempotencyKey":"list_isp_plans:1:2"}],"toolResults":[{"toolCallId":"","toolName":"list_isp_plans","success":true,"code":"OK","data":{"planos":[{"download_kbps":10240,"id":16,"nome":"10 MEGAS Pós-Pago sem Fidelidade","upload_kbps":5120,"valor_mensal":"R$ 200.00"},{"download_kbps":3,"id":52,"nome":"3MB","upload_kbps":2,"valor_mensal":"R$ 90.00"},{"download_kbps":51200,"id":125,"nome":"*50MB RÁDIO RURAL","upload_kbps":25600,"valor_mensal":"R$ 59.99"},{"download_kbps":10485760,"id":38,"nome":"Internet Rural 10MB","upload_kbps":10485760,"valor_mensal":"R$ 200.00"},{"download_kbps":122880,"id":133,"nome":"plano 120 megas","upload_kbps":122880,"valor_mensal":"R$ 100.00"},{"download_kbps":4900,"id":35,"nome":"Plano 5mb","upload_kbps":5900,"valor_mensal":"R$ 59.90"},{"download_kbps":0,"id":75,"nome":"plano 60mb espigao","upload_kbps":0,"valor_mensal":"R$ 99.90"},{"download_kbps":8000,"id":115,"nome":"PLANO 8 MEGAS","upload_kbps":8000,"valor_mensal":"R$ 120.00"},{"download_kbps":17408,"id":76,"nome":"plano rural guavira","upload_kbps":10240,"valor_mensal":"R$ 99.90"},{"download_kbps":10240,"id":166,"nome":"PLANOS DE10 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":10240,"valor_mensal":"R$ 59.90"},{"download_kbps":15360,"id":167,"nome":"PLANOS DE15 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":15360,"valor_mensal":"R$ 69.90"},{"download_kbps":20480,"id":168,"nome":"PLANOS DE20 MEGAS  VIA RADIO- NETVIP TELECOM","upload_kbps":20480,"valor_mensal":"R$ 79.90"}],"totalNoSgp":248},"userSafeMessage":"Foram localizados 12 planos oficiais no ERP SGP.","retryable":false,"latencyMs":165}]},{"stepIndex":2,"phase":"RESPOND","responseChunk":"O plano de 3MB está disponível por R$ 90,00/mês. Para prosseguir com a contratação, preciso de algumas informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (completo, incluindo cidade e estado)\\n4. Telefone para contato\\n\\nCom esses dados, posso iniciar o processo de contratação para você!"}],"toolsExecuted":["list_isp_plans"],"outputMessage":"O plano de 3MB está disponível por R$ 90,00/mês. Para prosseguir com a contratação, preciso de algumas informações:\\n\\n1. Nome completo\\n2. CPF\\n3. Endereço completo (completo, incluindo cidade e estado)\\n4. Telefone para contato\\n\\nCom esses dados, posso iniciar o processo de contratação para você!","handoffTriggered":false,"tokensUsed":4548,"estimatedCost":0,"latencyMs":1973,"provider":"openai","model":"gpt-4o-mini","agentVersion":"v1.3.0","promptVersion":"v1.2","personaVersion":"v1.0","toolsetVersion":"v1.3","createdAt":"2026-08-29T00:32:55.528480937Z"}]	2026-08-29 00:13:35.153002+00	2026-09-15 15:28:27.27541+00	1	27	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: Subscriptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Subscriptions" (id, "isActive", "expiresAt", "userPriceCents", "whatsPriceCents", "lastInvoiceUrl", "lastPlanChange", "companyId", "providerSubscriptionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Tags" (id, name, color, "companyId", "createdAt", "updatedAt", kanban, "msgR", "rptDays", "actCamp", "mediaPath", "mediaName") FROM stdin;
\.


--
-- Data for Name: Tasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Tasks" (id, text, description, created_at, updated_at, "companyId", "userId") FROM stdin;
\.


--
-- Data for Name: TelegramBots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."TelegramBots" (id, name, token, username, "botId", status, "isDefault", "greetingMessage", "farewellMessage", "outOfHoursMessage", "expiresTicket", "companyId", "queueId", "createdAt", "updatedAt", kind, session, "apiId", "apiHash", "personalQueueIds") FROM stdin;
\.


--
-- Data for Name: TicketMediaDeliveries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."TicketMediaDeliveries" (id, "ticketId", "mediaId", "companyId", trigger, "sentAt") FROM stdin;
\.


--
-- Data for Name: TicketNotes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."TicketNotes" (id, note, "userId", "contactId", "ticketId", "createdAt", "updatedAt") FROM stdin;
1	📋 [TRANSF. IA → HUMANO]\n• Motivo: Solicitação de cancelamento do plano.\n• Resumo: Cliente solicitou o cancelamento do plano SPEED 50 MEGAS FIBRA.\n• Próximo Passo: Dar continuidade ao processo de cancelamento.	\N	2	\N	2026-08-30 01:07:07.507817+00	2026-08-30 01:07:07.507817+00
2	🤖 Atendimento devolvido para a IA\n• Motivo: continue o atendimento pra mim	1	2	\N	2026-08-30 18:27:54.480192+00	2026-08-30 18:27:54.480192+00
3	📋 [TRANSF. IA → HUMANO]\n• Motivo: Solicitação expressa do cliente para atendimento humano.\n• Resumo: Cliente solicitou desligar o bot e atendimento humano.\n• Próximo Passo: Atender a solicitação do cliente.	\N	1	33	2026-09-15 13:41:34.907624+00	2026-09-15 13:41:34.907624+00
\.


--
-- Data for Name: TicketTags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."TicketTags" ("ticketId", "tagId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: TicketTraking; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."TicketTraking" (id, "ticketId", "companyId", "whatsappId", "userId", "createdAt", "updatedAt", "queuedAt", "startedAt", "finishedAt", "ratingAt", rated, "ratingId") FROM stdin;
1	\N	1	\N	\N	2026-08-28 22:47:19.16641+00	2026-08-29 00:09:32.389282+00	2026-08-29 00:09:32.389272+00	\N	\N	\N	f	\N
2	\N	1	\N	\N	2026-08-28 23:52:53.890531+00	2026-08-29 00:36:27.290124+00	2026-08-29 00:36:27.290121+00	\N	\N	\N	f	\N
5	\N	1	\N	\N	2026-08-29 00:52:35.062307+00	2026-08-29 00:52:35.066713+00	2026-08-29 00:52:35.066705+00	\N	\N	\N	f	\N
6	\N	1	\N	\N	2026-08-29 01:18:42.684239+00	2026-08-29 01:18:42.687701+00	2026-08-29 01:18:42.687692+00	\N	\N	\N	f	\N
7	\N	1	\N	\N	2026-08-29 01:52:50.491297+00	2026-08-29 01:52:50.495094+00	2026-08-29 01:52:50.495083+00	\N	\N	\N	f	\N
4	\N	1	\N	1	2026-08-29 00:03:12.401826+00	2026-08-29 00:04:33.68077+00	2026-08-29 00:03:12.407393+00	2026-08-29 00:04:33.68076+00	\N	\N	f	\N
11	\N	1	\N	\N	2026-08-29 03:19:44.944422+00	2026-08-29 03:19:44.947992+00	2026-08-29 03:19:44.947982+00	\N	\N	\N	f	\N
9	\N	1	\N	\N	2026-08-29 02:08:10.578916+00	2026-08-29 02:08:10.583249+00	2026-08-29 02:08:10.58324+00	\N	\N	\N	f	\N
10	\N	1	\N	1	2026-08-29 02:47:32.602781+00	2026-08-29 02:47:57.558941+00	2026-08-29 02:47:32.607097+00	2026-08-29 02:47:57.558933+00	\N	\N	f	\N
13	\N	1	\N	\N	2026-08-29 03:26:59.994712+00	2026-08-29 03:26:59.998627+00	2026-08-29 03:26:59.99862+00	\N	\N	\N	f	\N
12	\N	1	\N	\N	2026-08-29 03:26:59.989625+00	2026-08-29 03:26:59.995965+00	2026-08-29 03:26:59.995956+00	\N	\N	\N	f	\N
14	\N	1	\N	\N	2026-08-29 04:04:54.420844+00	2026-08-29 04:04:54.42531+00	2026-08-29 04:04:54.425305+00	\N	\N	\N	f	\N
3	\N	1	\N	\N	2026-08-28 23:53:54.9418+00	2026-08-28 23:53:54.946354+00	\N	2026-08-28 23:53:54.946339+00	\N	\N	f	\N
8	\N	1	\N	\N	2026-08-29 02:04:27.330641+00	2026-08-29 02:04:27.335038+00	\N	2026-08-29 02:04:27.335025+00	\N	\N	f	\N
16	16	1	\N	\N	2026-08-29 23:19:41.455904+00	2026-08-29 23:19:41.460692+00	\N	2026-08-29 23:19:41.460681+00	\N	\N	f	\N
22	\N	1	\N	\N	2026-08-30 00:32:32.047081+00	2026-08-30 00:32:32.051596+00	2026-08-30 00:32:32.051588+00	\N	\N	\N	f	\N
21	\N	1	\N	1	2026-08-29 23:27:13.380943+00	2026-08-29 23:29:01.127133+00	2026-08-29 23:27:13.386109+00	2026-08-29 23:29:01.127125+00	\N	\N	f	\N
23	\N	1	\N	1	2026-08-30 00:54:03.055452+00	2026-08-30 19:44:00.051249+00	2026-08-30 19:44:00.051245+00	2026-08-30 19:44:00.051243+00	\N	\N	f	\N
15	\N	1	\N	1	2026-08-29 23:18:13.206703+00	2026-08-30 18:10:14.63292+00	2026-08-29 23:18:13.211812+00	2026-08-29 23:20:33.186551+00	2026-08-30 18:10:14.632909+00	\N	f	\N
29	\N	1	\N	\N	2026-08-30 18:11:50.196569+00	2026-08-30 18:11:50.203805+00	2026-08-30 18:11:50.203796+00	\N	\N	\N	f	\N
28	\N	1	\N	\N	2026-08-30 16:45:02.814286+00	2026-08-30 16:45:02.818332+00	2026-08-30 16:45:02.818312+00	\N	\N	\N	f	\N
27	\N	1	\N	\N	2026-08-30 14:35:45.220344+00	2026-08-30 14:35:45.225749+00	2026-08-30 14:35:45.225741+00	\N	\N	\N	f	\N
24	\N	1	\N	\N	2026-08-30 13:54:31.493892+00	2026-08-30 13:54:31.49937+00	2026-08-30 13:54:31.49935+00	\N	\N	\N	f	\N
30	\N	1	\N	\N	2026-09-14 22:36:27.941534+00	2026-09-14 22:36:27.948604+00	2026-09-14 22:36:27.948598+00	\N	\N	\N	f	\N
32	31	1	\N	\N	2026-09-14 22:43:19.228075+00	2026-09-14 22:43:19.230932+00	2026-09-14 22:43:19.230925+00	\N	\N	\N	f	\N
31	30	1	\N	\N	2026-09-14 22:41:43.630109+00	2026-09-14 23:03:29.613066+00	2026-09-14 22:41:43.63415+00	\N	2026-09-14 23:03:29.613061+00	\N	f	\N
33	30	1	\N	\N	2026-09-14 23:03:34.263796+00	2026-09-14 23:03:34.267214+00	2026-09-14 23:03:34.267207+00	\N	\N	\N	f	\N
34	32	1	\N	\N	2026-09-14 23:10:04.003289+00	2026-09-14 23:10:04.007042+00	\N	2026-09-14 23:10:04.007035+00	\N	\N	f	\N
35	33	1	\N	1	2026-09-15 00:20:15.527789+00	2026-09-15 14:04:12.522098+00	2026-09-15 14:04:12.522091+00	2026-09-15 14:04:12.52209+00	\N	\N	f	\N
36	34	1	\N	\N	2026-09-15 15:24:39.298279+00	2026-09-15 15:24:39.304118+00	2026-09-15 15:24:39.304113+00	\N	\N	\N	f	\N
37	35	1	\N	\N	2026-09-15 15:24:58.964636+00	2026-09-15 15:24:58.968184+00	2026-09-15 15:24:58.968175+00	\N	\N	\N	f	\N
\.


--
-- Data for Name: Tickets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Tickets" (id, status, "lastMessage", "contactId", "userId", "createdAt", "updatedAt", "whatsappId", "isGroup", "unreadMessages", "queueId", "companyId", uuid, chatbot, "queueOptionId", "isBot", channel, "amountUsedBotQueues", "telegramBotId", "groupContactId", "sendChannel") FROM stdin;
31	pending	Imagem	29	\N	2026-09-14 22:43:19.222538+00	2026-09-15 15:23:01.362699+00	\N	f	0	\N	1	a5f1bfbc-d800-444d-89ec-7c8374203e4f	f	\N	\N	whatsmeow	\N	\N	\N	
30	pending	00020101021226940014BR.GOV.BCB.PIX2572qrcodespix.sejaefi.com.br/bolix/v2/cobv/18db7d82eb14453ba778f12663f000e35204000053039865802BR5905EFISA6008SAOPAULO62070503***6304C102	2	\N	2026-09-14 22:41:43.623078+00	2026-09-14 23:07:44.743222+00	\N	f	0	\N	1	7096bd62-f9da-4785-b87f-2e6c6db73691	f	\N	\N	whatsmeow	\N	\N	\N	
34	pending	+972549926556	20	\N	2026-09-15 15:24:39.290137+00	2026-09-15 15:24:49.123582+00	\N	f	0	\N	1	40d7b9b2-4b51-40f9-b0eb-cfc55d22c330	f	\N	\N	whatsmeow	\N	\N	\N	
35	pending	Ok bro	32	\N	2026-09-15 15:24:58.957659+00	2026-09-15 15:28:26.53147+00	\N	f	0	\N	1	94a37175-a675-48f7-a7d1-3b50c10d3387	f	\N	\N	whatsmeow	\N	\N	\N	
33	open		1	1	2026-09-15 00:20:15.511837+00	2026-09-15 18:48:17.397878+00	\N	f	0	4	1	635f70dd-0e58-4197-b072-343248382d11	f	\N	\N	whatsmeow	\N	\N	\N	
16	open	Os sócios interessados negociam com o Fundo de Investimento Público da Arábia Saudita (PIF) a compra do Al Nassr. Além do Cristiano Ronaldo, o proprietário do Milan, Gerry Cardinale, também integra o grupo. Será que vem aí Robôzão dono e jogador????👀👀👀 \n\n🗞️ A Bola	26	\N	2026-08-29 23:19:41.443384+00	2026-09-15 21:19:05.262567+00	\N	t	0	\N	1	91dc5c28-f61b-45cb-97ee-61f25b3e733a	f	\N	\N	whatsmeow	\N	\N	\N	
32	open	conclusão que cheguei foi q teve uma lentidão no chatwoot... realmente tivemos uma lentidão complicada hoje.\nComo o padrão são 3minutos, as mídias foram perdidas para o chatwoot	30	\N	2026-09-14 23:10:03.996747+00	2026-09-15 21:19:07.171894+00	\N	t	0	\N	1	a880fd5b-adbd-425c-b48b-d2d2397a3b2e	f	\N	\N	whatsmeow	\N	\N	\N	
\.


--
-- Data for Name: UserQueues; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."UserQueues" ("userId", "queueId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: UserRatings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."UserRatings" (id, "ticketId", "companyId", "userId", "createdAt", "updatedAt", "ratingIdOption", "ratingId") FROM stdin;
\.


--
-- Data for Name: UserWhatsapps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."UserWhatsapps" ("userId", "whatsappId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Users" (id, name, email, "passwordHash", "createdAt", "updatedAt", profile, "tokenVersion", "companyId", super, online, "endWork", "startWork", color, "farewellMessage", "resetPassword", "confirmationToken", avatar, "pushToken", permissions, "useSignature") FROM stdin;
1	Admin	admin@admin.com	$2a$10$KeAY/EVqjiTXKR84ay1aoOtEMmvXFm5oHIvec3nC47XA86u.0oGpW	2026-08-28 22:22:29.603+00	2026-09-04 14:53:37.729104+00	admin	0	1	t	f	23:59	00:00	\N	\N	\N	\N	\N	\N	{}	t
\.


--
-- Data for Name: WebhookEndpoints; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."WebhookEndpoints" (id, "companyId", url, secret, enabled, events, headers, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: WhatsMeowSessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."WhatsMeowSessions" (id, "sessionId", connected, "loggedIn", "webhookUrl", "lastQr", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: WhatsappQueues; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."WhatsappQueues" ("whatsappId", "queueId", "createdAt", "updatedAt") FROM stdin;
3	1	2026-08-29 00:18:38.943062+00	2026-08-29 00:18:38.943062+00
3	2	2026-08-29 00:18:38.943062+00	2026-08-29 00:18:38.943062+00
3	3	2026-08-29 00:18:38.943062+00	2026-08-29 00:18:38.943062+00
3	4	2026-08-29 00:18:38.943062+00	2026-08-29 00:18:38.943062+00
\.


--
-- Data for Name: WhatsappTemplates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."WhatsappTemplates" (id, name, category, language, status, components, "templateId", "companyId", "whatsappId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: Whatsapps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Whatsapps" (id, session, qrcode, status, battery, plugged, "createdAt", "updatedAt", name, "isDefault", retries, "greetingMessage", "companyId", "complationMessage", "outOfHoursMessage", token, "farewellMessage", provider, number, channel, "facebookUserToken", "tokenMeta", "facebookPageUserId", "facebookUserId", "maxUseBotQueues", "expiresTicket", "chatGPTEnabled", "greetingMediaAttachment", "ratingMessage", "maxUseBotQueueId", tipo, "wabaId", "idZap", "tokenZap", "isEvolution", "evolutionInstanceName", "evolutionApiKey", "evolutionApiUrl", "evolutionStatus", "evolutionWebhookUrl", "sendChannel", "outgoingId") FROM stdin;
\.


--
-- Data for Name: WhiteLabels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."WhiteLabels" (id, "companyId", slug, domain, "siteName", "primaryColor", "secondaryColor", "logoUrl", "faviconUrl", "licenseKey", "isValid", "validationMessage", "createdAt", "updatedAt", config) FROM stdin;
\.


--
-- Data for Name: baileys_stores; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.baileys_stores (id, "sessionId", "whatsappId", data, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: proxies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.proxies (id, ip, port, "user", password, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version, applied_at) FROM stdin;
000_baseline.sql	2026-08-30 18:38:30.495582+00
001_company_business_segment.sql	2026-08-30 18:38:30.500935+00
002_knowledge_rag.sql	2026-09-04 14:06:40.768109+00
003_automation_followup.sql	2026-09-04 14:06:40.839125+00
004_followup_autoenroll.sql	2026-09-04 14:06:41.015353+00
005_optout_lgpd.sql	2026-09-04 14:06:41.019208+00
006_templates_risk_mcp.sql	2026-09-04 14:06:41.063074+00
007_performance_indexes.sql	2026-09-04 14:06:41.148778+00
008_escort_profile_boundaries.sql	2026-09-04 15:47:40.364855+00
009_luxury_contact_memory.sql	2026-09-07 13:38:01.282124+00
\.


--
-- Name: AIExecutionLogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AIExecutionLogs_id_seq"', 1, false);


--
-- Name: AgendamentoEmails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AgendamentoEmails_id_seq"', 1, false);


--
-- Name: AgentGlossary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AgentGlossary_id_seq"', 1, true);


--
-- Name: Announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Announcements_id_seq"', 1, false);


--
-- Name: ApiRequests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ApiRequests_id_seq"', 1, false);


--
-- Name: ApiUsages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ApiUsages_id_seq"', 1, false);


--
-- Name: AuditLogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AuditLogs_id_seq"', 1, false);


--
-- Name: AutomationRules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AutomationRules_id_seq"', 1, false);


--
-- Name: AutomationRuns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."AutomationRuns_id_seq"', 1, false);


--
-- Name: Baileys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Baileys_id_seq"', 1, false);


--
-- Name: CampaignSettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CampaignSettings_id_seq"', 1, false);


--
-- Name: CampaignShipping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CampaignShipping_id_seq"', 1, false);


--
-- Name: Campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Campaigns_id_seq"', 1, false);


--
-- Name: ChatMessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ChatMessages_id_seq"', 1, false);


--
-- Name: ChatUsers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ChatUsers_id_seq"', 1, false);


--
-- Name: Chatbots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Chatbots_id_seq"', 1, false);


--
-- Name: Chats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Chats_id_seq"', 1, false);


--
-- Name: Companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Companies_id_seq"', 1, true);


--
-- Name: CompanyWebhookSecrets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CompanyWebhookSecrets_id_seq"', 1, false);


--
-- Name: ContactCustomFields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ContactCustomFields_id_seq"', 1, false);


--
-- Name: ContactListItems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ContactListItems_id_seq"', 1, false);


--
-- Name: ContactLists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ContactLists_id_seq"', 1, false);


--
-- Name: ContactRoles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ContactRoles_id_seq"', 1, false);


--
-- Name: Contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Contacts_id_seq"', 32, true);


--
-- Name: CreditTransactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."CreditTransactions_id_seq"', 1, false);


--
-- Name: DialogChatBots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."DialogChatBots_id_seq"', 1, false);


--
-- Name: EmailIntegrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EmailIntegrations_id_seq"', 1, false);


--
-- Name: Emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Emails_id_seq"', 1, false);


--
-- Name: EscortMedia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."EscortMedia_id_seq"', 1, false);


--
-- Name: Escorts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Escorts_id_seq"', 1, false);


--
-- Name: Eventos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Eventos_id_seq"', 1, false);


--
-- Name: ExternalIntegrationQueries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ExternalIntegrationQueries_id_seq"', 1, false);


--
-- Name: FinanceConfigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FinanceConfigs_id_seq"', 1, true);


--
-- Name: FinanceInvoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FinanceInvoices_id_seq"', 1, false);


--
-- Name: FollowUpEnrollments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FollowUpEnrollments_id_seq"', 1, false);


--
-- Name: FollowUpEvents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FollowUpEvents_id_seq"', 1, false);


--
-- Name: FollowUpFlows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."FollowUpFlows_id_seq"', 1, false);


--
-- Name: GraphEdges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."GraphEdges_id_seq"', 1, false);


--
-- Name: GraphNodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."GraphNodes_id_seq"', 1, false);


--
-- Name: GroupContacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."GroupContacts_id_seq"', 1, false);


--
-- Name: Helps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Helps_id_seq"', 1, false);


--
-- Name: Incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Incidents_id_seq"', 1, false);


--
-- Name: Integrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Integrations_id_seq"', 1, false);


--
-- Name: Invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Invoices_id_seq"', 1, false);


--
-- Name: KipflowQueries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KipflowQueries_id_seq"', 1, false);


--
-- Name: KnowledgeAccessLogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeAccessLogs_id_seq"', 1, false);


--
-- Name: KnowledgeArticles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeArticles_id_seq"', 1, false);


--
-- Name: KnowledgeChunks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeChunks_id_seq"', 1, false);


--
-- Name: KnowledgeEntities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeEntities_id_seq"', 1, false);


--
-- Name: KnowledgeJobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeJobs_id_seq"', 1, false);


--
-- Name: KnowledgeSources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."KnowledgeSources_id_seq"', 1, false);


--
-- Name: LLMProviderConfigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."LLMProviderConfigs_id_seq"', 1, false);


--
-- Name: LayoutPresets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."LayoutPresets_id_seq"', 9, true);


--
-- Name: LeadHunterCampaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."LeadHunterCampaigns_id_seq"', 1, false);


--
-- Name: LgpdExecutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."LgpdExecutions_id_seq"', 1, false);


--
-- Name: Licenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Licenses_id_seq"', 1, false);


--
-- Name: LuxuryContactMemories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."LuxuryContactMemories_id_seq"', 1, false);


--
-- Name: McpTokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."McpTokens_id_seq"', 1, false);


--
-- Name: MessageRecoveryRuns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."MessageRecoveryRuns_id_seq"', 1, false);


--
-- Name: MessageTemplates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."MessageTemplates_id_seq"', 1, false);


--
-- Name: MsgTelegram_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."MsgTelegram_id_seq"', 1, false);


--
-- Name: OfficialCampaignShipping_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."OfficialCampaignShipping_id_seq"', 1, false);


--
-- Name: OfficialCampaignShippings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."OfficialCampaignShippings_id_seq"', 1, false);


--
-- Name: OfficialCampaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."OfficialCampaigns_id_seq"', 1, false);


--
-- Name: Plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Plans_id_seq"', 25, true);


--
-- Name: ProfessionalDossierDocuments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ProfessionalDossierDocuments_id_seq"', 1, false);


--
-- Name: ProfessionalDossiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ProfessionalDossiers_id_seq"', 1, false);


--
-- Name: QueueOptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."QueueOptions_id_seq"', 1, false);


--
-- Name: Queues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Queues_id_seq"', 4, true);


--
-- Name: QuickMessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."QuickMessages_id_seq"', 1, false);


--
-- Name: RatingsOptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."RatingsOptions_id_seq"', 1, false);


--
-- Name: Ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Ratings_id_seq"', 1, false);


--
-- Name: RiskConfigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."RiskConfigs_id_seq"', 1, false);


--
-- Name: SGPMessageTemplates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."SGPMessageTemplates_id_seq"', 1, false);


--
-- Name: Schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Schedules_id_seq"', 1, false);


--
-- Name: Settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Settings_id_seq"', 65, true);


--
-- Name: Subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Subscriptions_id_seq"', 1, false);


--
-- Name: Tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Tags_id_seq"', 1, false);


--
-- Name: Tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Tasks_id_seq"', 1, false);


--
-- Name: TelegramBots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."TelegramBots_id_seq"', 1, false);


--
-- Name: TicketMediaDeliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."TicketMediaDeliveries_id_seq"', 1, false);


--
-- Name: TicketNotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."TicketNotes_id_seq"', 3, true);


--
-- Name: TicketTraking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."TicketTraking_id_seq"', 37, true);


--
-- Name: Tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Tickets_id_seq"', 35, true);


--
-- Name: UserRatings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."UserRatings_id_seq"', 1, false);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, true);


--
-- Name: WebhookEndpoints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."WebhookEndpoints_id_seq"', 1, false);


--
-- Name: WhatsMeowSessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."WhatsMeowSessions_id_seq"', 1, false);


--
-- Name: WhatsappTemplates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."WhatsappTemplates_id_seq"', 1, false);


--
-- Name: Whatsapps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Whatsapps_id_seq"', 4, true);


--
-- Name: WhiteLabels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."WhiteLabels_id_seq"', 1, false);


--
-- Name: baileys_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.baileys_stores_id_seq', 1, false);


--
-- Name: proxies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proxies_id_seq', 1, false);


--
-- Name: AIExecutionLogs AIExecutionLogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AIExecutionLogs"
    ADD CONSTRAINT "AIExecutionLogs_pkey" PRIMARY KEY (id);


--
-- Name: AgendamentoEmails AgendamentoEmails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AgendamentoEmails"
    ADD CONSTRAINT "AgendamentoEmails_pkey" PRIMARY KEY (id);


--
-- Name: AgentGlossary AgentGlossary_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AgentGlossary"
    ADD CONSTRAINT "AgentGlossary_pkey" PRIMARY KEY (id);


--
-- Name: Announcements Announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_pkey" PRIMARY KEY (id);


--
-- Name: ApiRequests ApiRequests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApiRequests"
    ADD CONSTRAINT "ApiRequests_pkey" PRIMARY KEY (id);


--
-- Name: ApiUsages ApiUsages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApiUsages"
    ADD CONSTRAINT "ApiUsages_pkey" PRIMARY KEY (id);


--
-- Name: AuditLogs AuditLogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AuditLogs"
    ADD CONSTRAINT "AuditLogs_pkey" PRIMARY KEY (id);


--
-- Name: AutomationRules AutomationRules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AutomationRules"
    ADD CONSTRAINT "AutomationRules_pkey" PRIMARY KEY (id);


--
-- Name: AutomationRuns AutomationRuns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AutomationRuns"
    ADD CONSTRAINT "AutomationRuns_pkey" PRIMARY KEY (id);


--
-- Name: Baileys Baileys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Baileys"
    ADD CONSTRAINT "Baileys_pkey" PRIMARY KEY (id, "whatsappId");


--
-- Name: CampaignSettings CampaignSettings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_pkey" PRIMARY KEY (id);


--
-- Name: CampaignShipping CampaignShipping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_pkey" PRIMARY KEY (id);


--
-- Name: Campaigns Campaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_pkey" PRIMARY KEY (id);


--
-- Name: ChatMessages ChatMessages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_pkey" PRIMARY KEY (id);


--
-- Name: ChatUsers ChatUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_pkey" PRIMARY KEY (id);


--
-- Name: Chatbots Chatbots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chatbots"
    ADD CONSTRAINT "Chatbots_pkey" PRIMARY KEY (id);


--
-- Name: Chats Chats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_pkey" PRIMARY KEY (id);


--
-- Name: Companies Companies_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_name_key" UNIQUE (name);


--
-- Name: Companies Companies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);


--
-- Name: CompanyWebhookSecrets CompanyWebhookSecrets_companyId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CompanyWebhookSecrets"
    ADD CONSTRAINT "CompanyWebhookSecrets_companyId_key" UNIQUE ("companyId");


--
-- Name: CompanyWebhookSecrets CompanyWebhookSecrets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CompanyWebhookSecrets"
    ADD CONSTRAINT "CompanyWebhookSecrets_pkey" PRIMARY KEY (id);


--
-- Name: ContactCustomFields ContactCustomFields_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_pkey" PRIMARY KEY (id);


--
-- Name: ContactListItems ContactListItems_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_pkey" PRIMARY KEY (id);


--
-- Name: ContactLists ContactLists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_pkey" PRIMARY KEY (id);


--
-- Name: ContactRoles ContactRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactRoles"
    ADD CONSTRAINT "ContactRoles_pkey" PRIMARY KEY (id);


--
-- Name: Contacts Contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_pkey" PRIMARY KEY (id);


--
-- Name: CreditTransactions CreditTransactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CreditTransactions"
    ADD CONSTRAINT "CreditTransactions_pkey" PRIMARY KEY (id);


--
-- Name: DialogChatBots DialogChatBots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DialogChatBots"
    ADD CONSTRAINT "DialogChatBots_pkey" PRIMARY KEY (id);


--
-- Name: EmailIntegrations EmailIntegrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailIntegrations"
    ADD CONSTRAINT "EmailIntegrations_pkey" PRIMARY KEY (id);


--
-- Name: Emails Emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Emails"
    ADD CONSTRAINT "Emails_pkey" PRIMARY KEY (id);


--
-- Name: EscortMedia EscortMedia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EscortMedia"
    ADD CONSTRAINT "EscortMedia_pkey" PRIMARY KEY (id);


--
-- Name: Escorts Escorts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Escorts"
    ADD CONSTRAINT "Escorts_pkey" PRIMARY KEY (id);


--
-- Name: Eventos Eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_pkey" PRIMARY KEY (id);


--
-- Name: ExternalIntegrationQueries ExternalIntegrationQueries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries"
    ADD CONSTRAINT "ExternalIntegrationQueries_pkey" PRIMARY KEY (id);


--
-- Name: FinanceConfigs FinanceConfigs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceConfigs"
    ADD CONSTRAINT "FinanceConfigs_pkey" PRIMARY KEY (id);


--
-- Name: FinanceInvoices FinanceInvoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceInvoices"
    ADD CONSTRAINT "FinanceInvoices_pkey" PRIMARY KEY (id);


--
-- Name: FollowUpEnrollments FollowUpEnrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEnrollments"
    ADD CONSTRAINT "FollowUpEnrollments_pkey" PRIMARY KEY (id);


--
-- Name: FollowUpEvents FollowUpEvents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEvents"
    ADD CONSTRAINT "FollowUpEvents_pkey" PRIMARY KEY (id);


--
-- Name: FollowUpFlows FollowUpFlows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpFlows"
    ADD CONSTRAINT "FollowUpFlows_pkey" PRIMARY KEY (id);


--
-- Name: GraphEdges GraphEdges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphEdges"
    ADD CONSTRAINT "GraphEdges_pkey" PRIMARY KEY (id);


--
-- Name: GraphNodes GraphNodes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphNodes"
    ADD CONSTRAINT "GraphNodes_pkey" PRIMARY KEY (id);


--
-- Name: GroupContacts GroupContacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GroupContacts"
    ADD CONSTRAINT "GroupContacts_pkey" PRIMARY KEY (id);


--
-- Name: Helps Helps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Helps"
    ADD CONSTRAINT "Helps_pkey" PRIMARY KEY (id);


--
-- Name: Incidents Incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Incidents"
    ADD CONSTRAINT "Incidents_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureAudits InfrastructureAudits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureAudits"
    ADD CONSTRAINT "InfrastructureAudits_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureBackups InfrastructureBackups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureBackups"
    ADD CONSTRAINT "InfrastructureBackups_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureDeployments InfrastructureDeployments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureDeployments"
    ADD CONSTRAINT "InfrastructureDeployments_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureInstallations InfrastructureInstallations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureInstallations InfrastructureInstallations_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_slug_key" UNIQUE (slug);


--
-- Name: InfrastructureInstallations InfrastructureInstallations_whiteLabelId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_whiteLabelId_key" UNIQUE ("whiteLabelId");


--
-- Name: InfrastructureReleases InfrastructureReleases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureReleases"
    ADD CONSTRAINT "InfrastructureReleases_pkey" PRIMARY KEY (id);


--
-- Name: InfrastructureReleases InfrastructureReleases_version_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureReleases"
    ADD CONSTRAINT "InfrastructureReleases_version_key" UNIQUE (version);


--
-- Name: InfrastructureServers InfrastructureServers_machineId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureServers"
    ADD CONSTRAINT "InfrastructureServers_machineId_key" UNIQUE ("machineId");


--
-- Name: InfrastructureServers InfrastructureServers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureServers"
    ADD CONSTRAINT "InfrastructureServers_pkey" PRIMARY KEY (id);


--
-- Name: Integrations Integrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Integrations"
    ADD CONSTRAINT "Integrations_pkey" PRIMARY KEY (id);


--
-- Name: Invoices Invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_pkey" PRIMARY KEY (id);


--
-- Name: KipflowQueries KipflowQueries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries"
    ADD CONSTRAINT "KipflowQueries_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeAccessLogs KnowledgeAccessLogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeAccessLogs"
    ADD CONSTRAINT "KnowledgeAccessLogs_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeArticles KnowledgeArticles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeArticles"
    ADD CONSTRAINT "KnowledgeArticles_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeChunks KnowledgeChunks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeChunks"
    ADD CONSTRAINT "KnowledgeChunks_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeEntities KnowledgeEntities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeEntities"
    ADD CONSTRAINT "KnowledgeEntities_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeJobs KnowledgeJobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeJobs"
    ADD CONSTRAINT "KnowledgeJobs_pkey" PRIMARY KEY (id);


--
-- Name: KnowledgeSources KnowledgeSources_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeSources"
    ADD CONSTRAINT "KnowledgeSources_pkey" PRIMARY KEY (id);


--
-- Name: LLMProviderConfigs LLMProviderConfigs_companyId_provider_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LLMProviderConfigs"
    ADD CONSTRAINT "LLMProviderConfigs_companyId_provider_key" UNIQUE ("companyId", provider);


--
-- Name: LLMProviderConfigs LLMProviderConfigs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LLMProviderConfigs"
    ADD CONSTRAINT "LLMProviderConfigs_pkey" PRIMARY KEY (id);


--
-- Name: LayoutPresets LayoutPresets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LayoutPresets"
    ADD CONSTRAINT "LayoutPresets_pkey" PRIMARY KEY (id);


--
-- Name: LeadHunterCampaigns LeadHunterCampaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LeadHunterCampaigns"
    ADD CONSTRAINT "LeadHunterCampaigns_pkey" PRIMARY KEY (id);


--
-- Name: LgpdExecutions LgpdExecutions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LgpdExecutions"
    ADD CONSTRAINT "LgpdExecutions_pkey" PRIMARY KEY (id);


--
-- Name: Licenses Licenses_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Licenses"
    ADD CONSTRAINT "Licenses_key_key" UNIQUE (key);


--
-- Name: Licenses Licenses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Licenses"
    ADD CONSTRAINT "Licenses_pkey" PRIMARY KEY (id);


--
-- Name: LuxuryContactMemories LuxuryContactMemories_companyId_contactId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LuxuryContactMemories"
    ADD CONSTRAINT "LuxuryContactMemories_companyId_contactId_key" UNIQUE ("companyId", "contactId");


--
-- Name: LuxuryContactMemories LuxuryContactMemories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LuxuryContactMemories"
    ADD CONSTRAINT "LuxuryContactMemories_pkey" PRIMARY KEY (id);


--
-- Name: McpTokens McpTokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."McpTokens"
    ADD CONSTRAINT "McpTokens_pkey" PRIMARY KEY (id);


--
-- Name: MessageRecoveryRuns MessageRecoveryRuns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MessageRecoveryRuns"
    ADD CONSTRAINT "MessageRecoveryRuns_pkey" PRIMARY KEY (id);


--
-- Name: MessageTemplates MessageTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MessageTemplates"
    ADD CONSTRAINT "MessageTemplates_pkey" PRIMARY KEY (id);


--
-- Name: Messages Messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_pkey" PRIMARY KEY (id);


--
-- Name: MsgTelegram MsgTelegram_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."MsgTelegram"
    ADD CONSTRAINT "MsgTelegram_pkey" PRIMARY KEY (id);


--
-- Name: OfficialCampaignShipping OfficialCampaignShipping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShipping"
    ADD CONSTRAINT "OfficialCampaignShipping_pkey" PRIMARY KEY (id);


--
-- Name: OfficialCampaignShippings OfficialCampaignShippings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShippings"
    ADD CONSTRAINT "OfficialCampaignShippings_pkey" PRIMARY KEY (id);


--
-- Name: OfficialCampaigns OfficialCampaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns"
    ADD CONSTRAINT "OfficialCampaigns_pkey" PRIMARY KEY (id);


--
-- Name: Plans Plans_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_name_key" UNIQUE (name);


--
-- Name: Plans Plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_pkey" PRIMARY KEY (id);


--
-- Name: ProfessionalDossierDocuments ProfessionalDossierDocuments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossierDocuments"
    ADD CONSTRAINT "ProfessionalDossierDocuments_pkey" PRIMARY KEY (id);


--
-- Name: ProfessionalDossiers ProfessionalDossiers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_pkey" PRIMARY KEY (id);


--
-- Name: QueueOptions QueueOptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_pkey" PRIMARY KEY (id);


--
-- Name: Queues Queues_color_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_color_key" UNIQUE (color, "companyId");


--
-- Name: Queues Queues_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_name_key" UNIQUE (name, "companyId");


--
-- Name: Queues Queues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_pkey" PRIMARY KEY (id);


--
-- Name: QuickMessages QuickMessages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_pkey" PRIMARY KEY (id);


--
-- Name: RatingsOptions RatingsOptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RatingsOptions"
    ADD CONSTRAINT "RatingsOptions_pkey" PRIMARY KEY (id);


--
-- Name: Ratings Ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Ratings"
    ADD CONSTRAINT "Ratings_pkey" PRIMARY KEY (id);


--
-- Name: RiskConfigs RiskConfigs_company_queue_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RiskConfigs"
    ADD CONSTRAINT "RiskConfigs_company_queue_unique" UNIQUE ("companyId", "queueId");


--
-- Name: RiskConfigs RiskConfigs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RiskConfigs"
    ADD CONSTRAINT "RiskConfigs_pkey" PRIMARY KEY (id);


--
-- Name: SGPMessageTemplates SGPMessageTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SGPMessageTemplates"
    ADD CONSTRAINT "SGPMessageTemplates_pkey" PRIMARY KEY (id);


--
-- Name: Schedules Schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: Subscriptions Subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_pkey" PRIMARY KEY (id);


--
-- Name: Tags Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);


--
-- Name: Tasks Tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (id);


--
-- Name: TelegramBots TelegramBots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TelegramBots"
    ADD CONSTRAINT "TelegramBots_pkey" PRIMARY KEY (id);


--
-- Name: TicketMediaDeliveries TicketMediaDeliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketMediaDeliveries"
    ADD CONSTRAINT "TicketMediaDeliveries_pkey" PRIMARY KEY (id);


--
-- Name: TicketNotes TicketNotes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_pkey" PRIMARY KEY (id);


--
-- Name: TicketTraking TicketTraking_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_pkey" PRIMARY KEY (id);


--
-- Name: Tickets Tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_pkey" PRIMARY KEY (id);


--
-- Name: UserQueues UserQueues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserQueues"
    ADD CONSTRAINT "UserQueues_pkey" PRIMARY KEY ("userId", "queueId");


--
-- Name: UserRatings UserRatings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_pkey" PRIMARY KEY (id);


--
-- Name: UserWhatsapps UserWhatsapps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserWhatsapps"
    ADD CONSTRAINT "UserWhatsapps_pkey" PRIMARY KEY ("userId", "whatsappId");


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: WebhookEndpoints WebhookEndpoints_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WebhookEndpoints"
    ADD CONSTRAINT "WebhookEndpoints_pkey" PRIMARY KEY (id);


--
-- Name: WhatsMeowSessions WhatsMeowSessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsMeowSessions"
    ADD CONSTRAINT "WhatsMeowSessions_pkey" PRIMARY KEY (id);


--
-- Name: WhatsMeowSessions WhatsMeowSessions_sessionId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsMeowSessions"
    ADD CONSTRAINT "WhatsMeowSessions_sessionId_key" UNIQUE ("sessionId");


--
-- Name: WhatsappQueues WhatsappQueues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappQueues"
    ADD CONSTRAINT "WhatsappQueues_pkey" PRIMARY KEY ("whatsappId", "queueId");


--
-- Name: WhatsappTemplates WhatsappTemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappTemplates"
    ADD CONSTRAINT "WhatsappTemplates_pkey" PRIMARY KEY (id);


--
-- Name: WhatsappTemplates WhatsappTemplates_templateId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappTemplates"
    ADD CONSTRAINT "WhatsappTemplates_templateId_key" UNIQUE ("templateId");


--
-- Name: Whatsapps Whatsapps_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_name_key" UNIQUE (name);


--
-- Name: Whatsapps Whatsapps_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_pkey" PRIMARY KEY (id);


--
-- Name: WhiteLabels WhiteLabels_domain_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhiteLabels"
    ADD CONSTRAINT "WhiteLabels_domain_key" UNIQUE (domain);


--
-- Name: WhiteLabels WhiteLabels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhiteLabels"
    ADD CONSTRAINT "WhiteLabels_pkey" PRIMARY KEY (id);


--
-- Name: WhiteLabels WhiteLabels_slug_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhiteLabels"
    ADD CONSTRAINT "WhiteLabels_slug_key" UNIQUE (slug);


--
-- Name: baileys_stores baileys_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.baileys_stores
    ADD CONSTRAINT baileys_stores_pkey PRIMARY KEY (id);


--
-- Name: baileys_stores baileys_stores_sessionId_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.baileys_stores
    ADD CONSTRAINT "baileys_stores_sessionId_key" UNIQUE ("sessionId");


--
-- Name: InfrastructureDeployments infra_deployments_idempotency_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureDeployments"
    ADD CONSTRAINT infra_deployments_idempotency_unique UNIQUE ("idempotencyKey");


--
-- Name: proxies proxies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxies
    ADD CONSTRAINT proxies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: GraphNodes unique_graph_node_company_type_entity; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphNodes"
    ADD CONSTRAINT unique_graph_node_company_type_entity UNIQUE ("companyId", "nodeType", "entityId");


--
-- Name: ContactRoles uq_contact_roles_company_contact_role; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactRoles"
    ADD CONSTRAINT uq_contact_roles_company_contact_role UNIQUE ("companyId", "contactId", role);


--
-- Name: AutomationRules_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "AutomationRules_companyId_idx" ON public."AutomationRules" USING btree ("companyId");


--
-- Name: AutomationRuns_companyId_createdAt_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "AutomationRuns_companyId_createdAt_idx" ON public."AutomationRuns" USING btree ("companyId", "createdAt" DESC);


--
-- Name: AutomationRuns_ruleId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "AutomationRuns_ruleId_idx" ON public."AutomationRuns" USING btree ("ruleId");


--
-- Name: Contacts_number_companyId_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "Contacts_number_companyId_unique" ON public."Contacts" USING btree (number, "companyId");


--
-- Name: FollowUpEnrollments_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "FollowUpEnrollments_companyId_idx" ON public."FollowUpEnrollments" USING btree ("companyId");


--
-- Name: FollowUpEnrollments_flow_ticket_uniq; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "FollowUpEnrollments_flow_ticket_uniq" ON public."FollowUpEnrollments" USING btree ("flowId", "ticketId");


--
-- Name: FollowUpEnrollments_nextRunAt_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "FollowUpEnrollments_nextRunAt_idx" ON public."FollowUpEnrollments" USING btree ("nextRunAt") WHERE (status = 'active'::text);


--
-- Name: FollowUpEvents_companyId_createdAt_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "FollowUpEvents_companyId_createdAt_idx" ON public."FollowUpEvents" USING btree ("companyId", "createdAt" DESC);


--
-- Name: FollowUpEvents_enrollmentId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "FollowUpEvents_enrollmentId_idx" ON public."FollowUpEvents" USING btree ("enrollmentId");


--
-- Name: FollowUpFlows_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "FollowUpFlows_companyId_idx" ON public."FollowUpFlows" USING btree ("companyId");


--
-- Name: Incidents_active_pon; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "Incidents_active_pon" ON public."Incidents" USING btree ("companyId", "oltId", slot, pon) WHERE (status = 'open'::text);


--
-- Name: KnowledgeChunks_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "KnowledgeChunks_companyId_idx" ON public."KnowledgeChunks" USING btree ("companyId");


--
-- Name: KnowledgeChunks_sourceId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "KnowledgeChunks_sourceId_idx" ON public."KnowledgeChunks" USING btree ("sourceId");


--
-- Name: KnowledgeSources_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "KnowledgeSources_companyId_idx" ON public."KnowledgeSources" USING btree ("companyId");


--
-- Name: LgpdExecutions_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "LgpdExecutions_companyId_idx" ON public."LgpdExecutions" USING btree ("companyId");


--
-- Name: LgpdExecutions_contactId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "LgpdExecutions_contactId_idx" ON public."LgpdExecutions" USING btree ("contactId");


--
-- Name: LuxuryContactMemories_company_contact_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "LuxuryContactMemories_company_contact_idx" ON public."LuxuryContactMemories" USING btree ("companyId", "contactId");


--
-- Name: McpTokens_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "McpTokens_companyId_idx" ON public."McpTokens" USING btree ("companyId");


--
-- Name: McpTokens_hash_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "McpTokens_hash_idx" ON public."McpTokens" USING btree ("tokenHash");


--
-- Name: MessageTemplates_companyId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "MessageTemplates_companyId_idx" ON public."MessageTemplates" USING btree ("companyId");


--
-- Name: Tickets_one_open_per_contact_channel; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "Tickets_one_open_per_contact_channel" ON public."Tickets" USING btree ("companyId", "contactId", channel) WHERE ((status)::text <> 'closed'::text);


--
-- Name: external_integration_contact_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX external_integration_contact_idx ON public."ExternalIntegrationQueries" USING btree ("companyId", "contactId");


--
-- Name: external_integration_queries_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX external_integration_queries_idx ON public."ExternalIntegrationQueries" USING btree ("companyId", provider, operation, "createdAt");


--
-- Name: idx_agent_glossary_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_agent_glossary_company ON public."AgentGlossary" USING btree ("companyId");


--
-- Name: idx_ai_logs_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ai_logs_company ON public."AIExecutionLogs" USING btree ("companyId");


--
-- Name: idx_ai_logs_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ai_logs_created ON public."AIExecutionLogs" USING btree ("companyId", "createdAt" DESC);


--
-- Name: idx_ai_logs_ticket; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ai_logs_ticket ON public."AIExecutionLogs" USING btree ("ticketId");


--
-- Name: idx_audit_logs_company_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_audit_logs_company_created ON public."AuditLogs" USING btree ("companyId", "createdAt");


--
-- Name: idx_audit_logs_entity; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_audit_logs_entity ON public."AuditLogs" USING btree ("entityType", "entityId");


--
-- Name: idx_chat_users_unreads; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_chat_users_unreads ON public."ChatUsers" USING btree (unreads) WHERE (unreads > 0);


--
-- Name: idx_cont_company_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cont_company_id ON public."Contacts" USING btree ("companyId");


--
-- Name: idx_contact_roles_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_contact_roles_company ON public."ContactRoles" USING btree ("companyId");


--
-- Name: idx_contact_roles_contact; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_contact_roles_contact ON public."ContactRoles" USING btree ("contactId");


--
-- Name: idx_cpsh_campaign_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cpsh_campaign_id ON public."CampaignShipping" USING btree ("campaignId");


--
-- Name: idx_ctli_contact_list_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ctli_contact_list_id ON public."ContactListItems" USING btree ("contactListId");


--
-- Name: idx_escort_media_lookup; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_escort_media_lookup ON public."EscortMedia" USING btree ("escortId", type, active);


--
-- Name: idx_graph_edges_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_edges_company ON public."GraphEdges" USING btree ("companyId");


--
-- Name: idx_graph_edges_source; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_edges_source ON public."GraphEdges" USING btree ("sourceNodeId");


--
-- Name: idx_graph_edges_target; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_edges_target ON public."GraphEdges" USING btree ("targetNodeId");


--
-- Name: idx_graph_edges_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_edges_type ON public."GraphEdges" USING btree ("companyId", "relationshipType");


--
-- Name: idx_graph_nodes_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_nodes_company ON public."GraphNodes" USING btree ("companyId");


--
-- Name: idx_graph_nodes_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_graph_nodes_type ON public."GraphNodes" USING btree ("companyId", "nodeType");


--
-- Name: idx_knowledge_access_log_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_access_log_company ON public."KnowledgeAccessLogs" USING btree ("companyId");


--
-- Name: idx_knowledge_access_log_resource; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_access_log_resource ON public."KnowledgeAccessLogs" USING btree ("companyId", "resourceType");


--
-- Name: idx_knowledge_access_log_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_access_log_time ON public."KnowledgeAccessLogs" USING btree ("createdAt");


--
-- Name: idx_knowledge_access_log_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_access_log_user ON public."KnowledgeAccessLogs" USING btree ("companyId", "userId");


--
-- Name: idx_knowledge_articles_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_articles_company ON public."KnowledgeArticles" USING btree ("companyId");


--
-- Name: idx_knowledge_articles_confidence; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_articles_confidence ON public."KnowledgeArticles" USING btree ("companyId", "confidenceScore");


--
-- Name: idx_knowledge_articles_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_articles_status ON public."KnowledgeArticles" USING btree ("companyId", status);


--
-- Name: idx_knowledge_articles_tags; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_articles_tags ON public."KnowledgeArticles" USING gin (tags);


--
-- Name: idx_knowledge_articles_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_articles_type ON public."KnowledgeArticles" USING btree ("companyId", type);


--
-- Name: idx_knowledge_entities_category; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_entities_category ON public."KnowledgeEntities" USING btree ("companyId", category);


--
-- Name: idx_knowledge_entities_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_entities_company ON public."KnowledgeEntities" USING btree ("companyId");


--
-- Name: idx_knowledge_entities_confidence; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_entities_confidence ON public."KnowledgeEntities" USING btree ("companyId", "confidenceScore");


--
-- Name: idx_knowledge_entities_tags; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_entities_tags ON public."KnowledgeEntities" USING gin (tags);


--
-- Name: idx_knowledge_jobs_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_jobs_company ON public."KnowledgeJobs" USING btree ("companyId");


--
-- Name: idx_knowledge_jobs_pending_retry; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_jobs_pending_retry ON public."KnowledgeJobs" USING btree (status, "nextRetryAt");


--
-- Name: idx_knowledge_jobs_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_jobs_status ON public."KnowledgeJobs" USING btree (status);


--
-- Name: idx_knowledge_jobs_ticket; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_knowledge_jobs_ticket ON public."KnowledgeJobs" USING btree ("companyId", "ticketId");


--
-- Name: idx_layout_presets_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_layout_presets_company ON public."LayoutPresets" USING btree ("companyId");


--
-- Name: idx_leadhunter_campaigns_campaign; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_leadhunter_campaigns_campaign ON public."LeadHunterCampaigns" USING btree ("campaignId");


--
-- Name: idx_leadhunter_campaigns_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_leadhunter_campaigns_company ON public."LeadHunterCampaigns" USING btree ("companyId");


--
-- Name: idx_leadhunter_campaigns_company_campaign; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_leadhunter_campaigns_company_campaign ON public."LeadHunterCampaigns" USING btree ("companyId", "campaignId");


--
-- Name: idx_leadhunter_campaigns_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_leadhunter_campaigns_status ON public."LeadHunterCampaigns" USING btree (status);


--
-- Name: idx_llm_configs_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_llm_configs_company ON public."LLMProviderConfigs" USING btree ("companyId");


--
-- Name: idx_messages_companyId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_messages_companyId" ON public."Messages" USING btree ("companyId");


--
-- Name: idx_messages_createdAt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_messages_createdAt" ON public."Messages" USING btree ("createdAt");


--
-- Name: idx_messages_fromMe; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_messages_fromMe" ON public."Messages" USING btree ("fromMe");


--
-- Name: idx_messages_ticketId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_messages_ticketId" ON public."Messages" USING btree ("ticketId");


--
-- Name: idx_messages_ticketId_createdAt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_messages_ticketId_createdAt" ON public."Messages" USING btree ("ticketId", "createdAt");


--
-- Name: idx_ms_company_id_ticket_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ms_company_id_ticket_id ON public."Messages" USING btree ("companyId", "ticketId");


--
-- Name: idx_sched_company_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sched_company_id ON public."Schedules" USING btree ("companyId");


--
-- Name: idx_sgp_templates_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sgp_templates_company ON public."SGPMessageTemplates" USING btree ("companyId");


--
-- Name: idx_tg_company_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tg_company_id ON public."Tags" USING btree ("companyId");


--
-- Name: idx_tickets_open_pending_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_tickets_open_pending_unique ON public."Tickets" USING btree ("companyId", "contactId") WHERE ((status)::text = ANY ((ARRAY['open'::character varying, 'pending'::character varying])::text[]));


--
-- Name: idx_tickets_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_tickets_status ON public."Tickets" USING btree (status);


--
-- Name: idx_tickets_updatedAt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickets_updatedAt" ON public."Tickets" USING btree ("updatedAt");


--
-- Name: idx_tickettraking_companyId_createdAt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickettraking_companyId_createdAt" ON public."TicketTraking" USING btree ("companyId", "createdAt");


--
-- Name: idx_tickettraking_finishedAt; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickettraking_finishedAt" ON public."TicketTraking" USING btree ("finishedAt");


--
-- Name: idx_tickettraking_ticketId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickettraking_ticketId" ON public."TicketTraking" USING btree ("ticketId");


--
-- Name: idx_tickettraking_userId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickettraking_userId" ON public."TicketTraking" USING btree ("userId");


--
-- Name: idx_tickettraking_whatsappId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "idx_tickettraking_whatsappId" ON public."TicketTraking" USING btree ("whatsappId");


--
-- Name: idx_user_whatsapps_whatsapp_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_user_whatsapps_whatsapp_id ON public."UserWhatsapps" USING btree ("whatsappId");


--
-- Name: idx_whatsapp_templates_company; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_whatsapp_templates_company ON public."WhatsappTemplates" USING btree ("companyId");


--
-- Name: infra_one_active_command_per_installation; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX infra_one_active_command_per_installation ON public."InfrastructureDeployments" USING btree ("installationId") WHERE ((status)::text = ANY ((ARRAY['queued'::character varying, 'dispatched'::character varying, 'acknowledged'::character varying, 'running'::character varying])::text[]));


--
-- Name: kipflow_queries_cache_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX kipflow_queries_cache_idx ON public."KipflowQueries" USING btree ("companyId", "identifierHash", operation, "createdAt");


--
-- Name: kipflow_queries_ticket_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX kipflow_queries_ticket_idx ON public."KipflowQueries" USING btree ("companyId", "ticketId");


--
-- Name: official_campaign_shipping_campaign_status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX official_campaign_shipping_campaign_status_idx ON public."OfficialCampaignShipping" USING btree ("officialCampaignId", status);


--
-- Name: professional_dossier_documents_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professional_dossier_documents_idx ON public."ProfessionalDossierDocuments" USING btree ("companyId", "dossierId", category);


--
-- Name: professional_dossiers_contact_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professional_dossiers_contact_idx ON public."ProfessionalDossiers" USING btree ("companyId", "contactId");


--
-- Name: professional_dossiers_deadline_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professional_dossiers_deadline_idx ON public."ProfessionalDossiers" USING btree ("companyId", "dueDate");


--
-- Name: professional_dossiers_portfolio_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX professional_dossiers_portfolio_idx ON public."ProfessionalDossiers" USING btree ("companyId", kind, status);


--
-- Name: uniq_ticket_media_delivery; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uniq_ticket_media_delivery ON public."TicketMediaDeliveries" USING btree ("ticketId", "mediaId");


--
-- Name: uq_agent_glossary_phrase; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_agent_glossary_phrase ON public."AgentGlossary" USING btree ("companyId", lower((phrase)::text));


--
-- Name: uq_sgp_template_code; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_sgp_template_code ON public."SGPMessageTemplates" USING btree ("companyId", code);


--
-- Name: AgendamentoEmails AgendamentoEmails_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AgendamentoEmails"
    ADD CONSTRAINT "AgendamentoEmails_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Announcements Announcements_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ApiRequests ApiRequests_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApiRequests"
    ADD CONSTRAINT "ApiRequests_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AuditLogs AuditLogs_actorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AuditLogs"
    ADD CONSTRAINT "AuditLogs_actorId_fkey" FOREIGN KEY ("actorId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: AuditLogs AuditLogs_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AuditLogs"
    ADD CONSTRAINT "AuditLogs_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: AutomationRuns AutomationRuns_ruleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AutomationRuns"
    ADD CONSTRAINT "AutomationRuns_ruleId_fkey" FOREIGN KEY ("ruleId") REFERENCES public."AutomationRules"(id) ON DELETE CASCADE;


--
-- Name: CampaignSettings CampaignSettings_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CampaignShipping CampaignShipping_campaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_campaignId_fkey" FOREIGN KEY ("campaignId") REFERENCES public."Campaigns"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: CampaignShipping CampaignShipping_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."ContactListItems"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Campaigns Campaigns_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Campaigns Campaigns_contactListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Campaigns Campaigns_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: ChatMessages ChatMessages_chatId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ChatMessages ChatMessages_senderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ChatUsers ChatUsers_chatId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ChatUsers ChatUsers_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Chatbots Chatbots_chatbotId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chatbots"
    ADD CONSTRAINT "Chatbots_chatbotId_fkey" FOREIGN KEY ("chatbotId") REFERENCES public."Chatbots"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Chatbots Chatbots_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chatbots"
    ADD CONSTRAINT "Chatbots_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Chats Chats_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Chats Chats_ownerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Companies Companies_planId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_planId_fkey" FOREIGN KEY ("planId") REFERENCES public."Plans"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CompanyWebhookSecrets CompanyWebhookSecrets_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CompanyWebhookSecrets"
    ADD CONSTRAINT "CompanyWebhookSecrets_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactCustomFields ContactCustomFields_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactListItems ContactListItems_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactListItems ContactListItems_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ContactListItems ContactListItems_contactListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactLists ContactLists_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactRoles ContactRoles_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactRoles"
    ADD CONSTRAINT "ContactRoles_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ContactRoles ContactRoles_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ContactRoles"
    ADD CONSTRAINT "ContactRoles_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Contacts Contacts_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: CreditTransactions CreditTransactions_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CreditTransactions"
    ADD CONSTRAINT "CreditTransactions_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DialogChatBots DialogChatBots_chatbotId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DialogChatBots"
    ADD CONSTRAINT "DialogChatBots_chatbotId_fkey" FOREIGN KEY ("chatbotId") REFERENCES public."Chatbots"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DialogChatBots DialogChatBots_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DialogChatBots"
    ADD CONSTRAINT "DialogChatBots_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DialogChatBots DialogChatBots_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DialogChatBots"
    ADD CONSTRAINT "DialogChatBots_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: EmailIntegrations EmailIntegrations_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EmailIntegrations"
    ADD CONSTRAINT "EmailIntegrations_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE CASCADE;


--
-- Name: Emails Emails_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Emails"
    ADD CONSTRAINT "Emails_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: EscortMedia EscortMedia_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EscortMedia"
    ADD CONSTRAINT "EscortMedia_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: EscortMedia EscortMedia_escortId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EscortMedia"
    ADD CONSTRAINT "EscortMedia_escortId_fkey" FOREIGN KEY ("escortId") REFERENCES public."Escorts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Escorts Escorts_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Escorts"
    ADD CONSTRAINT "Escorts_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Escorts Escorts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Escorts"
    ADD CONSTRAINT "Escorts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Eventos Eventos_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Eventos"
    ADD CONSTRAINT "Eventos_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ExternalIntegrationQueries ExternalIntegrationQueries_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries"
    ADD CONSTRAINT "ExternalIntegrationQueries_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ExternalIntegrationQueries ExternalIntegrationQueries_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries"
    ADD CONSTRAINT "ExternalIntegrationQueries_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ExternalIntegrationQueries ExternalIntegrationQueries_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries"
    ADD CONSTRAINT "ExternalIntegrationQueries_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ExternalIntegrationQueries ExternalIntegrationQueries_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ExternalIntegrationQueries"
    ADD CONSTRAINT "ExternalIntegrationQueries_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinanceConfigs FinanceConfigs_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceConfigs"
    ADD CONSTRAINT "FinanceConfigs_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: FinanceConfigs FinanceConfigs_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceConfigs"
    ADD CONSTRAINT "FinanceConfigs_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinanceInvoices FinanceInvoices_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceInvoices"
    ADD CONSTRAINT "FinanceInvoices_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: FinanceInvoices FinanceInvoices_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FinanceInvoices"
    ADD CONSTRAINT "FinanceInvoices_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FollowUpEnrollments FollowUpEnrollments_flowId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEnrollments"
    ADD CONSTRAINT "FollowUpEnrollments_flowId_fkey" FOREIGN KEY ("flowId") REFERENCES public."FollowUpFlows"(id) ON DELETE CASCADE;


--
-- Name: FollowUpEvents FollowUpEvents_enrollmentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."FollowUpEvents"
    ADD CONSTRAINT "FollowUpEvents_enrollmentId_fkey" FOREIGN KEY ("enrollmentId") REFERENCES public."FollowUpEnrollments"(id) ON DELETE CASCADE;


--
-- Name: GraphEdges GraphEdges_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphEdges"
    ADD CONSTRAINT "GraphEdges_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GraphEdges GraphEdges_sourceNodeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphEdges"
    ADD CONSTRAINT "GraphEdges_sourceNodeId_fkey" FOREIGN KEY ("sourceNodeId") REFERENCES public."GraphNodes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GraphEdges GraphEdges_targetNodeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphEdges"
    ADD CONSTRAINT "GraphEdges_targetNodeId_fkey" FOREIGN KEY ("targetNodeId") REFERENCES public."GraphNodes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GraphNodes GraphNodes_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GraphNodes"
    ADD CONSTRAINT "GraphNodes_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GroupContacts GroupContacts_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GroupContacts"
    ADD CONSTRAINT "GroupContacts_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: InfrastructureBackups InfrastructureBackups_installationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureBackups"
    ADD CONSTRAINT "InfrastructureBackups_installationId_fkey" FOREIGN KEY ("installationId") REFERENCES public."InfrastructureInstallations"(id) ON DELETE CASCADE;


--
-- Name: InfrastructureDeployments InfrastructureDeployments_installationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureDeployments"
    ADD CONSTRAINT "InfrastructureDeployments_installationId_fkey" FOREIGN KEY ("installationId") REFERENCES public."InfrastructureInstallations"(id) ON DELETE CASCADE;


--
-- Name: InfrastructureDeployments InfrastructureDeployments_releaseId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureDeployments"
    ADD CONSTRAINT "InfrastructureDeployments_releaseId_fkey" FOREIGN KEY ("releaseId") REFERENCES public."InfrastructureReleases"(id) ON DELETE SET NULL;


--
-- Name: InfrastructureInstallations InfrastructureInstallations_licenseId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_licenseId_fkey" FOREIGN KEY ("licenseId") REFERENCES public."Licenses"(id) ON DELETE SET NULL;


--
-- Name: InfrastructureInstallations InfrastructureInstallations_serverId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_serverId_fkey" FOREIGN KEY ("serverId") REFERENCES public."InfrastructureServers"(id) ON DELETE RESTRICT;


--
-- Name: InfrastructureInstallations InfrastructureInstallations_whiteLabelId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."InfrastructureInstallations"
    ADD CONSTRAINT "InfrastructureInstallations_whiteLabelId_fkey" FOREIGN KEY ("whiteLabelId") REFERENCES public."WhiteLabels"(id) ON DELETE RESTRICT;


--
-- Name: Integrations Integrations_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Integrations"
    ADD CONSTRAINT "Integrations_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Invoices Invoices_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: KipflowQueries KipflowQueries_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries"
    ADD CONSTRAINT "KipflowQueries_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KipflowQueries KipflowQueries_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries"
    ADD CONSTRAINT "KipflowQueries_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: KipflowQueries KipflowQueries_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries"
    ADD CONSTRAINT "KipflowQueries_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: KipflowQueries KipflowQueries_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KipflowQueries"
    ADD CONSTRAINT "KipflowQueries_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: KnowledgeAccessLogs KnowledgeAccessLogs_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeAccessLogs"
    ADD CONSTRAINT "KnowledgeAccessLogs_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KnowledgeArticles KnowledgeArticles_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeArticles"
    ADD CONSTRAINT "KnowledgeArticles_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KnowledgeArticles KnowledgeArticles_sourceTicketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeArticles"
    ADD CONSTRAINT "KnowledgeArticles_sourceTicketId_fkey" FOREIGN KEY ("sourceTicketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: KnowledgeChunks KnowledgeChunks_sourceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeChunks"
    ADD CONSTRAINT "KnowledgeChunks_sourceId_fkey" FOREIGN KEY ("sourceId") REFERENCES public."KnowledgeSources"(id) ON DELETE CASCADE;


--
-- Name: KnowledgeEntities KnowledgeEntities_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeEntities"
    ADD CONSTRAINT "KnowledgeEntities_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KnowledgeJobs KnowledgeJobs_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeJobs"
    ADD CONSTRAINT "KnowledgeJobs_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KnowledgeJobs KnowledgeJobs_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."KnowledgeJobs"
    ADD CONSTRAINT "KnowledgeJobs_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: LeadHunterCampaigns LeadHunterCampaigns_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."LeadHunterCampaigns"
    ADD CONSTRAINT "LeadHunterCampaigns_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Messages Messages_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Messages Messages_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Messages Messages_participantContactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_participantContactId_fkey" FOREIGN KEY ("participantContactId") REFERENCES public."GroupContacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Messages Messages_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Messages Messages_quotedMsgId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_quotedMsgId_fkey" FOREIGN KEY ("quotedMsgId") REFERENCES public."Messages"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Messages Messages_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaignShipping OfficialCampaignShipping_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShipping"
    ADD CONSTRAINT "OfficialCampaignShipping_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaignShipping OfficialCampaignShipping_officialCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShipping"
    ADD CONSTRAINT "OfficialCampaignShipping_officialCampaignId_fkey" FOREIGN KEY ("officialCampaignId") REFERENCES public."OfficialCampaigns"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaignShippings OfficialCampaignShippings_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShippings"
    ADD CONSTRAINT "OfficialCampaignShippings_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaignShippings OfficialCampaignShippings_officialCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaignShippings"
    ADD CONSTRAINT "OfficialCampaignShippings_officialCampaignId_fkey" FOREIGN KEY ("officialCampaignId") REFERENCES public."OfficialCampaigns"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaigns OfficialCampaigns_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns"
    ADD CONSTRAINT "OfficialCampaigns_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfficialCampaigns OfficialCampaigns_contactListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns"
    ADD CONSTRAINT "OfficialCampaigns_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: OfficialCampaigns OfficialCampaigns_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns"
    ADD CONSTRAINT "OfficialCampaigns_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: OfficialCampaigns OfficialCampaigns_whatsappTemplateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OfficialCampaigns"
    ADD CONSTRAINT "OfficialCampaigns_whatsappTemplateId_fkey" FOREIGN KEY ("whatsappTemplateId") REFERENCES public."WhatsappTemplates"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ProfessionalDossierDocuments ProfessionalDossierDocuments_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossierDocuments"
    ADD CONSTRAINT "ProfessionalDossierDocuments_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ProfessionalDossierDocuments ProfessionalDossierDocuments_dossierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossierDocuments"
    ADD CONSTRAINT "ProfessionalDossierDocuments_dossierId_fkey" FOREIGN KEY ("dossierId") REFERENCES public."ProfessionalDossiers"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ProfessionalDossierDocuments ProfessionalDossierDocuments_uploadedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossierDocuments"
    ADD CONSTRAINT "ProfessionalDossierDocuments_uploadedById_fkey" FOREIGN KEY ("uploadedById") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ProfessionalDossiers ProfessionalDossiers_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ProfessionalDossiers ProfessionalDossiers_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ProfessionalDossiers ProfessionalDossiers_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ProfessionalDossiers ProfessionalDossiers_ownerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ProfessionalDossiers ProfessionalDossiers_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ProfessionalDossiers"
    ADD CONSTRAINT "ProfessionalDossiers_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: QueueOptions QueueOptions_parentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES public."QueueOptions"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: QueueOptions QueueOptions_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Queues Queues_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: QuickMessages QuickMessages_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: QuickMessages QuickMessages_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: RatingsOptions RatingsOptions_ratingId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."RatingsOptions"
    ADD CONSTRAINT "RatingsOptions_ratingId_fkey" FOREIGN KEY ("ratingId") REFERENCES public."Ratings"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ratings Ratings_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Ratings"
    ADD CONSTRAINT "Ratings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Schedules Schedules_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Schedules Schedules_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Schedules Schedules_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Schedules Schedules_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Settings Settings_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Settings"
    ADD CONSTRAINT "Settings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Subscriptions Subscriptions_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tags Tags_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Tasks Tasks_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id);


--
-- Name: Tasks Tasks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TelegramBots TelegramBots_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TelegramBots"
    ADD CONSTRAINT "TelegramBots_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TelegramBots TelegramBots_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TelegramBots"
    ADD CONSTRAINT "TelegramBots_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TicketMediaDeliveries TicketMediaDeliveries_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketMediaDeliveries"
    ADD CONSTRAINT "TicketMediaDeliveries_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketMediaDeliveries TicketMediaDeliveries_mediaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketMediaDeliveries"
    ADD CONSTRAINT "TicketMediaDeliveries_mediaId_fkey" FOREIGN KEY ("mediaId") REFERENCES public."EscortMedia"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketMediaDeliveries TicketMediaDeliveries_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketMediaDeliveries"
    ADD CONSTRAINT "TicketMediaDeliveries_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketNotes TicketNotes_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketNotes TicketNotes_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TicketNotes TicketNotes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TicketTags TicketTags_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTags"
    ADD CONSTRAINT "TicketTags_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketTags TicketTags_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTags"
    ADD CONSTRAINT "TicketTags_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TicketTraking TicketTraking_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;


--
-- Name: TicketTraking TicketTraking_ratingId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_ratingId_fkey" FOREIGN KEY ("ratingId") REFERENCES public."Ratings"(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: TicketTraking TicketTraking_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON DELETE SET NULL;


--
-- Name: TicketTraking TicketTraking_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;


--
-- Name: TicketTraking TicketTraking_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON DELETE SET NULL;


--
-- Name: Tickets Tickets_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tickets Tickets_contactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Tickets Tickets_groupContactId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_groupContactId_fkey" FOREIGN KEY ("groupContactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tickets Tickets_queueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tickets Tickets_queueOptionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_queueOptionId_fkey" FOREIGN KEY ("queueOptionId") REFERENCES public."QueueOptions"(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: Tickets Tickets_telegramBotId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_telegramBotId_fkey" FOREIGN KEY ("telegramBotId") REFERENCES public."TelegramBots"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tickets Tickets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Tickets Tickets_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: UserRatings UserRatings_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;


--
-- Name: UserRatings UserRatings_ratingIdOption_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_ratingIdOption_fkey" FOREIGN KEY ("ratingIdOption") REFERENCES public."RatingsOptions"(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: UserRatings UserRatings_ratingId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_ratingId_fkey" FOREIGN KEY ("ratingId") REFERENCES public."Ratings"(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: UserRatings UserRatings_ticketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Tickets"(id) ON DELETE SET NULL;


--
-- Name: UserRatings UserRatings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;


--
-- Name: UserWhatsapps UserWhatsapps_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserWhatsapps"
    ADD CONSTRAINT "UserWhatsapps_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: UserWhatsapps UserWhatsapps_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."UserWhatsapps"
    ADD CONSTRAINT "UserWhatsapps_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Users Users_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: WebhookEndpoints WebhookEndpoints_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WebhookEndpoints"
    ADD CONSTRAINT "WebhookEndpoints_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: WhatsappTemplates WhatsappTemplates_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappTemplates"
    ADD CONSTRAINT "WhatsappTemplates_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: WhatsappTemplates WhatsappTemplates_whatsappId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhatsappTemplates"
    ADD CONSTRAINT "WhatsappTemplates_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Whatsapps Whatsapps_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Whatsapps Whatsapps_maxUseBotQueueId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_maxUseBotQueueId_fkey" FOREIGN KEY ("maxUseBotQueueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Whatsapps Whatsapps_outgoingId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_outgoingId_fkey" FOREIGN KEY ("outgoingId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: WhiteLabels WhiteLabels_companyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."WhiteLabels"
    ADD CONSTRAINT "WhiteLabels_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict dCwBrcjaEz6caftW8CjJ0Pva98qGjq6FKA3NqPgi4mFhwxDcQMTnKJRsAblWE2k

