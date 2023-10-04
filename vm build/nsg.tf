resource "azurerm_network_security_group" "example" {
  name                = var.nsg-name
  location            = azurerm_resource_group.name.location
  resource_group_name = azurerm_resource_group.name.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "nsg-sub" {
  subnet_id                 = azurerm_subnet.sub01.id
  network_security_group_id = azurerm_network_security_group.example.id
  depends_on = [ azurerm_network_security_group.example ]
}