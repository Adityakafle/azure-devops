resource "azurerm_resource_group" "company_rg" {
  name     = var.company_name
  location = var.location
}
  
resource "azurerm_virtual_network" "company_vnet" {
  name                = "${var.company_name}-vnet"
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.company_rg.location
  resource_group_name = azurerm_resource_group.company_rg.name
}
