variable "os_management_hub_managed_instance_remove_packages_managements" {
  description = <<EOT
Map of os_management_hub_managed_instance_remove_packages_managements, attributes below
Required:
    - managed_instance_id
    - package_names
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    managed_instance_id = string
    package_names       = list(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

