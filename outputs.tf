output "event_triggers_id" {
  description = "Map of id values across all event_triggers, keyed the same as var.event_triggers except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_triggers_app_id" {
  description = "Map of app_id values across all event_triggers, keyed the same as var.event_triggers except keys with no app_id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "event_triggers_config_collection" {
  description = "Map of config_collection values across all event_triggers, keyed the same as var.event_triggers except keys with no config_collection are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_collection if v.config_collection != null && length(v.config_collection) > 0 }
}
output "event_triggers_config_database" {
  description = "Map of config_database values across all event_triggers, keyed the same as var.event_triggers except keys with no config_database are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_database if v.config_database != null && length(v.config_database) > 0 }
}
output "event_triggers_config_full_document" {
  description = "Map of config_full_document values across all event_triggers, keyed the same as var.event_triggers except keys with no config_full_document are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_full_document if v.config_full_document != null }
}
output "event_triggers_config_full_document_before" {
  description = "Map of config_full_document_before values across all event_triggers, keyed the same as var.event_triggers except keys with no config_full_document_before are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_full_document_before if v.config_full_document_before != null }
}
output "event_triggers_config_match" {
  description = "Map of config_match values across all event_triggers, keyed the same as var.event_triggers except keys with no config_match are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_match if v.config_match != null && length(v.config_match) > 0 }
}
output "event_triggers_config_operation_type" {
  description = "Map of config_operation_type values across all event_triggers, keyed the same as var.event_triggers except keys with no config_operation_type are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_operation_type if v.config_operation_type != null && length(v.config_operation_type) > 0 }
}
output "event_triggers_config_operation_types" {
  description = "Map of config_operation_types values across all event_triggers, keyed the same as var.event_triggers except keys with no config_operation_types are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_operation_types if v.config_operation_types != null && length(v.config_operation_types) > 0 }
}
output "event_triggers_config_project" {
  description = "Map of config_project values across all event_triggers, keyed the same as var.event_triggers except keys with no config_project are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_project if v.config_project != null && length(v.config_project) > 0 }
}
output "event_triggers_config_providers" {
  description = "Map of config_providers values across all event_triggers, keyed the same as var.event_triggers except keys with no config_providers are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_providers if v.config_providers != null && length(v.config_providers) > 0 }
}
output "event_triggers_config_schedule" {
  description = "Map of config_schedule values across all event_triggers, keyed the same as var.event_triggers except keys with no config_schedule are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_schedule if v.config_schedule != null && length(v.config_schedule) > 0 }
}
output "event_triggers_config_schedule_type" {
  description = "Map of config_schedule_type values across all event_triggers, keyed the same as var.event_triggers except keys with no config_schedule_type are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_schedule_type if v.config_schedule_type != null && length(v.config_schedule_type) > 0 }
}
output "event_triggers_config_service_id" {
  description = "Map of config_service_id values across all event_triggers, keyed the same as var.event_triggers except keys with no config_service_id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.config_service_id if v.config_service_id != null && length(v.config_service_id) > 0 }
}
output "event_triggers_disabled" {
  description = "Map of disabled values across all event_triggers, keyed the same as var.event_triggers except keys with no disabled are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.disabled if v.disabled != null }
}
output "event_triggers_event_processors" {
  description = "Map of event_processors values across all event_triggers, keyed the same as var.event_triggers except keys with no event_processors are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => one(v.event_processors) if v.event_processors != null && length(v.event_processors) > 0 }
}
output "event_triggers_function_id" {
  description = "Map of function_id values across all event_triggers, keyed the same as var.event_triggers except keys with no function_id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.function_id if v.function_id != null && length(v.function_id) > 0 }
}
output "event_triggers_function_name" {
  description = "Map of function_name values across all event_triggers, keyed the same as var.event_triggers except keys with no function_name are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "event_triggers_name" {
  description = "Map of name values across all event_triggers, keyed the same as var.event_triggers except keys with no name are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "event_triggers_project_id" {
  description = "Map of project_id values across all event_triggers, keyed the same as var.event_triggers except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "event_triggers_trigger_id" {
  description = "Map of trigger_id values across all event_triggers, keyed the same as var.event_triggers except keys with no trigger_id are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.trigger_id if v.trigger_id != null && length(v.trigger_id) > 0 }
}
output "event_triggers_type" {
  description = "Map of type values across all event_triggers, keyed the same as var.event_triggers except keys with no type are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.type if v.type != null && length(v.type) > 0 }
}
output "event_triggers_unordered" {
  description = "Map of unordered values across all event_triggers, keyed the same as var.event_triggers except keys with no unordered are omitted"
  value       = { for k, v in mongodbatlas_event_trigger.event_triggers : k => v.unordered if v.unordered != null }
}

