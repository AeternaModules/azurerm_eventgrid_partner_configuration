output "eventgrid_partner_configurations_default_maximum_expiration_time_in_days" {
  description = "Map of default_maximum_expiration_time_in_days values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.default_maximum_expiration_time_in_days }
}
output "eventgrid_partner_configurations_partner_authorization" {
  description = "Map of partner_authorization values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.partner_authorization }
}
output "eventgrid_partner_configurations_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.resource_group_name }
}
output "eventgrid_partner_configurations_tags" {
  description = "Map of tags values across all eventgrid_partner_configurations, keyed the same as var.eventgrid_partner_configurations"
  value       = { for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : k => v.tags }
}

