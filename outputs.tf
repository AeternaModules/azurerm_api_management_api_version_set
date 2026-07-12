output "api_management_api_version_sets_api_management_name" {
  description = "Map of api_management_name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.api_management_name }
}
output "api_management_api_version_sets_description" {
  description = "Map of description values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.description }
}
output "api_management_api_version_sets_display_name" {
  description = "Map of display_name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.display_name }
}
output "api_management_api_version_sets_name" {
  description = "Map of name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.name }
}
output "api_management_api_version_sets_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.resource_group_name }
}
output "api_management_api_version_sets_version_header_name" {
  description = "Map of version_header_name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.version_header_name }
}
output "api_management_api_version_sets_version_query_name" {
  description = "Map of version_query_name values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.version_query_name }
}
output "api_management_api_version_sets_versioning_scheme" {
  description = "Map of versioning_scheme values across all api_management_api_version_sets, keyed the same as var.api_management_api_version_sets"
  value       = { for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : k => v.versioning_scheme }
}

