resource "azurerm_virtual_network" "vnet" {
  name = "vnet01"
  resource_group_name = "rg01"
  location = "eastus"
address_space = ["10.0.0.0/24"]

}