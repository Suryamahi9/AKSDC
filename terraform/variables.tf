# Variable for the Resource Group Name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Variable for the Location (Azure region) where resources will be created
variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

# Variable for the Virtual Network Name
variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

# Variable for the Virtual Network Address Space
variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

# Variable for the Subnet Name
variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

# Variable for the Subnet Address Prefix
variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = list(string)
}

# Variable for the AKS Cluster Name
variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

# Variable for the DNS Prefix for the AKS Cluster
variable "aks_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

# Variable for the Number of Nodes in the AKS Cluster
variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
}

# Variable for the VM Size of the AKS Nodes
variable "vm_size" {
  description = "The VM size for the AKS nodes"
  type        = string
}
