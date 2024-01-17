resource "azurerm_resource_group" "aca" {
  name     = var.resource_group_name
  location = var.location
}

module "log_analytics" {
  source              = "./modules/log_analytics"
  resource_group_name = azurerm_resource_group.aca.name
  location            = azurerm_resource_group.aca.location
}

module "aca" {
  source = "./modules/aca"

  workspace_id        = module.log_analytics.log_analytics_workspace_id
  resource_group_name = azurerm_resource_group.aca.name
  location            = azurerm_resource_group.aca.location
}