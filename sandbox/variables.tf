variable "storage" {
  type = object({
    location = string
    resource_group_name = string  
    storage_account_name = string
    container_name = string
  })
}