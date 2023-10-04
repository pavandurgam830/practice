resource "azurerm_virtual_machine" "main" {
  name                  = var.vm-name
  location              = azurerm_resource_group.name.location
  resource_group_name   = azurerm_resource_group.name.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS1_v2"



  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = var.admin
    admin_password = var.password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
