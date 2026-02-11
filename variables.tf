variable "eventgrid_partner_configurations" {
  description = <<EOT
Map of eventgrid_partner_configurations, attributes below
Required:
    - resource_group_name
Optional:
    - default_maximum_expiration_time_in_days
    - tags
    - partner_authorization (block):
        - authorization_expiration_time_in_utc (optional)
        - partner_name (required)
        - partner_registration_id (required)
EOT

  type = map(object({
    resource_group_name                     = string
    default_maximum_expiration_time_in_days = optional(number) # Default: 7
    tags                                    = optional(map(string))
    partner_authorization = optional(list(object({
      authorization_expiration_time_in_utc = optional(string)
      partner_name                         = string
      partner_registration_id              = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_partner_configurations : (
        v.partner_authorization == null || (length(v.partner_authorization) >= 1)
      )
    ])
    error_message = "Each partner_authorization list must contain at least 1 items"
  }
}

