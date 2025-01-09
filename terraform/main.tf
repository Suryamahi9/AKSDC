# Required Providers
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Azure Provider
provider "azurerm" {
  features {}
}

# Declare the Resource Group
resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.location
}

# Declare the Virtual Network
resource "azurerm_virtual_network" "vn1" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = var.address_space
}

# Declare the Subnet
resource "azurerm_subnet" "subvn1" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vn1.name
  address_prefixes     = var.subnet_address_prefix
}

# Declare the Kubernetes Cluster (AKS)
resource "azurerm_kubernetes_cluster" "aks1" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}
