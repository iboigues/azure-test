module "storage" {
  source = "../modules/storage"

  location = var.storage.location
  resource_group_name = var.storage.resource_group_name  
  storage_account_name = var.storage.storage_account_name 
  container_name = var.storage.container_name
}