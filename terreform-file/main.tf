provider "azurerm" {
  features = {}
}

module "networking" {
  source = "./networking"
}

module "compute" {
  source = "./compute"
}

module "storage" {
  source = "./storage"
}
