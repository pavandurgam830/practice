resource "azurerm_network_interface" "nic" {
  name                = var.nic-name
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sub01.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.pub-ip.id
  }
}