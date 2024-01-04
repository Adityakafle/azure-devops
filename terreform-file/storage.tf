resource "azurerm_managed_disk" "company_disk" {
  name                 = "${var.company_name}-disk"
  resource_group_name  = azurerm_resource_group.company_rg.name
  location             = azurerm_resource_group.company_rg.location
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = var.disk_size_gb
}
