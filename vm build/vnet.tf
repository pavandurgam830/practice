resource "azurerm_virtual_network" "vnet01" {
  name = var.vinet-name
  location = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name
  address_space = var.ipaddress
}

resource "azurerm_subnet" "sub01" {
  name = var.subnet-name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  resource_group_name = azurerm_resource_group.name.name
  address_prefixes = var.subip

}