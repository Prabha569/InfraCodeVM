module "resource_group" {
 source = "../modules/azurerm_resource_group"

  resource_group_name   = "rg-prabha"
  location              = "Central India"
}

module "storage_account" {
  source = "../modules/azurerm_storage_account"

  stg_name = "ramastg5678"
  resource_group_name = "rg-prabha"
  location = "Central India"
  account_tier = "Standard"
  account_replication_type = "GRS"
}

module "resource_group1" {
 source = "../modules/azurerm_resource_group"

  resource_group_name   = "rg-tinku"
  location              = "West Us"
}

module "resource_group2" {
 source = "../modules/azurerm_resource_group"

  resource_group_name   = "rg-minu"
  location              = "South India"
}