variable "event_triggers" {
  description = <<EOT
Map of event_triggers, attributes below
Required:
    - app_id
    - name
    - project_id
    - type
Optional:
    - config_collection
    - config_database
    - config_full_document
    - config_full_document_before
    - config_match
    - config_operation_type
    - config_operation_types
    - config_project
    - config_providers
    - config_schedule
    - config_service_id
    - disabled
    - function_id
    - unordered
    - event_processors (block):
        - aws_eventbridge (optional, block):
            - config_account_id (optional)
            - config_region (optional)
EOT

  type = map(object({
    app_id                      = string
    name                        = string
    project_id                  = string
    type                        = string
    config_collection           = optional(string)
    config_database             = optional(string)
    config_full_document        = optional(bool)
    config_full_document_before = optional(bool)
    config_match                = optional(string)
    config_operation_type       = optional(string)
    config_operation_types      = optional(list(string))
    config_project              = optional(string)
    config_providers            = optional(list(string))
    config_schedule             = optional(string)
    config_service_id           = optional(string)
    disabled                    = optional(bool)
    function_id                 = optional(string)
    unordered                   = optional(bool)
    event_processors = optional(object({
      aws_eventbridge = optional(object({
        config_account_id = optional(string)
        config_region     = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.event_triggers : (
        contains(["DATABASE", "AUTHENTICATION", "SCHEDULED"], v.type)
      )
    ])
    error_message = "must be one of: \"DATABASE\", \"AUTHENTICATION\", \"SCHEDULED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.event_triggers : (
        v.config_operation_types == null || (alltrue([for x in v.config_operation_types : contains(["INSERT", "UPDATE", "REPLACE", "DELETE"], x)]))
      )
    ])
    error_message = "must be one of: \"INSERT\", \"UPDATE\", \"REPLACE\", \"DELETE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.event_triggers : (
        v.config_operation_type == null || (contains(["LOGIN", "CREATE", "DELETE"], v.config_operation_type))
      )
    ])
    error_message = "must be one of: \"LOGIN\", \"CREATE\", \"DELETE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.event_triggers : (
        v.config_providers == null || (alltrue([for x in v.config_providers : contains(["anon-user", "local-userpass", "api-key", "custom-token", "custom-function", "oauth2-facebook", "oauth2-google", "oauth2-apple"], x)]))
      )
    ])
    error_message = "must be one of: \"anon-user\", \"local-userpass\", \"api-key\", \"custom-token\", \"custom-function\", \"oauth2-facebook\", \"oauth2-google\", \"oauth2-apple\""
  }
}

