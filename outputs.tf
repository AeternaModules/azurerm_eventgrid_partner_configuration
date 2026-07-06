output "eventgrid_partner_configurations" {
  description = "All eventgrid_partner_configuration resources"
  value       = azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations
}
output "eventgrid_partner_configurations_default_maximum_expiration_time_in_days" {
  description = "List of default_maximum_expiration_time_in_days values across all eventgrid_partner_configurations"
  value       = [for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : v.default_maximum_expiration_time_in_days]
}
output "eventgrid_partner_configurations_partner_authorization" {
  description = "List of partner_authorization values across all eventgrid_partner_configurations"
  value       = [for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : v.partner_authorization]
}
output "eventgrid_partner_configurations_resource_group_name" {
  description = "List of resource_group_name values across all eventgrid_partner_configurations"
  value       = [for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : v.resource_group_name]
}
output "eventgrid_partner_configurations_tags" {
  description = "List of tags values across all eventgrid_partner_configurations"
  value       = [for k, v in azurerm_eventgrid_partner_configuration.eventgrid_partner_configurations : v.tags]
}

