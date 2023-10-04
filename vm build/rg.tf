resource "azurerm_resource_group" "name" {
  name = var.rg-name
  location = var.loc-name
}