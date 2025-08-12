resource "azurerm_resource_group" "rg" {
  name     = "resumeoncloud-rg"
  location = "eastus2"
}

resource "azurerm_static_web_app" "static_web_app" {
  name                = var.static_web_app_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_tier            = "Free"

}

resource "azurerm_application_insights" "app_insights" {
  name                = "${var.project_prefix}-appinsights"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"
  retention_in_days   = 30
}





