resource "azurerm_windows_virtual_machine" "company_vm" {
  name                  = "${var.company_name}-vm"
  resource_group_name   = azurerm_resource_group.company_rg.name
  location              = azurerm_resource_group.company_rg.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [module.networking.company_nic_id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
