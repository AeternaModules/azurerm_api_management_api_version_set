variable "api_management_api_version_sets" {
  description = <<EOT
Map of api_management_api_version_sets, attributes below
Required:
    - api_management_name
    - display_name
    - name
    - resource_group_name
    - versioning_scheme
Optional:
    - description
    - version_header_name
    - version_query_name
EOT

  type = map(object({
    api_management_name = string
    display_name        = string
    name                = string
    resource_group_name = string
    versioning_scheme   = string
    description         = optional(string)
    version_header_name = optional(string)
    version_query_name  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        v.version_header_name == null || (length(v.version_header_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_version_sets : (
        v.version_query_name == null || (length(v.version_query_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

