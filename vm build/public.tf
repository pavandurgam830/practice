resource "azurerm_public_ip" "pub-ip" {
  name                = var.pub-name
  resource_group_name = azurerm_resource_group.name.name
  location            = azurerm_resource_group.name.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}