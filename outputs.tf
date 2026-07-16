output "eventgrid_partner_configurations_id" {
  description = "Map of id values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventgrid_partner_configurations_default_maximum_expiration_time_in_days" {
  description = "Map of default_maximum_expiration_time_in_days values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.default_maximum_expiration_time_in_days if v.default_maximum_expiration_time_in_days != null }
}
output "eventgrid_partner_configurations_partner_authorization" {
  description = "Map of partner_authorization values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.partner_authorization if v.partner_authorization != null && length(v.partner_authorization) > 0 }
}
output "eventgrid_partner_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventgrid_partner_configurations_tags" {
  description = "Map of tags values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

