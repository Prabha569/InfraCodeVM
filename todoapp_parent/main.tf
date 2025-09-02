module "resource_group" {
 source = "../modules/azurerm_resource_group"

  resource_group_name   = "rg-prabha"
  location              = "Central India"
}

module "storage_account" {
  source = "../modules/azurerm_storage_account"
  depends_on = [ module.resource_group ]

  stg_name = "ramastg678"
  resource_group_name = "rg-prabha"
  location = "Central India"
  account_tier = "Standard"
  account_replication_type = "GRS"
}

module "resource_group2" {
 source = "../modules/azurerm_resource_group"

  resource_group_name   = "rg-magnu"
  location              = "South India"
}