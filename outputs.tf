output "api_management_api_version_sets" {
  description = "All api_management_api_version_set resources"
  value       = azurerm_api_management_api_version_set.api_management_api_version_sets
}
output "api_management_api_version_sets_api_management_name" {
  description = "List of api_management_name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.api_management_name]
}
output "api_management_api_version_sets_description" {
  description = "List of description values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.description]
}
output "api_management_api_version_sets_display_name" {
  description = "List of display_name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.display_name]
}
output "api_management_api_version_sets_name" {
  description = "List of name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.name]
}
output "api_management_api_version_sets_resource_group_name" {
  description = "List of resource_group_name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.resource_group_name]
}
output "api_management_api_version_sets_version_header_name" {
  description = "List of version_header_name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.version_header_name]
}
output "api_management_api_version_sets_version_query_name" {
  description = "List of version_query_name values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.version_query_name]
}
output "api_management_api_version_sets_versioning_scheme" {
  description = "List of versioning_scheme values across all api_management_api_version_sets"
  value       = [for k, v in azurerm_api_management_api_version_set.api_management_api_version_sets : v.versioning_scheme]
}

