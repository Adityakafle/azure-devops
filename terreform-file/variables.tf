variable "company_name" {
  description = "The name of the company"
}

variable "location" {
  description = "The Azure region for the resources"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "vm_size" {
  description = "The size of the virtual machine"
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
}

variable "disk_size_gb" {
  description = "The size of the managed disk in gigabytes"
}
