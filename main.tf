resource "mongodbatlas_event_trigger" "event_triggers" {
  for_each = var.event_triggers

  app_id                      = each.value.app_id
  name                        = each.value.name
  project_id                  = each.value.project_id
  type                        = each.value.type
  config_collection           = each.value.config_collection
  config_database             = each.value.config_database
  config_full_document        = each.value.config_full_document
  config_full_document_before = each.value.config_full_document_before
  config_match                = each.value.config_match
  config_operation_type       = each.value.config_operation_type
  config_operation_types      = each.value.config_operation_types
  config_project              = each.value.config_project
  config_providers            = each.value.config_providers
  config_schedule             = each.value.config_schedule
  config_service_id           = each.value.config_service_id
  disabled                    = each.value.disabled
  function_id                 = each.value.function_id
  unordered                   = each.value.unordered

  dynamic "event_processors" {
    for_each = each.value.event_processors != null ? [each.value.event_processors] : []
    content {
      dynamic "aws_eventbridge" {
        for_each = event_processors.value.aws_eventbridge != null ? [event_processors.value.aws_eventbridge] : []
        content {
          config_account_id = aws_eventbridge.value.config_account_id
          config_region     = aws_eventbridge.value.config_region
        }
      }
    }
  }
}

