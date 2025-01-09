# Resource Group Configuration
resource_group_name = "rg-prod"
location            = "East US"

# Virtual Network Configuration
virtual_network_name = "prod-vnet"
address_space       = ["10.0.0.0/16"]

# Subnet Configuration
subnet_name          = "prod-subnet"
subnet_address_prefix = ["10.0.1.0/24"]

# AKS Cluster Configuration
aks_cluster_name    = "prod-aks-cluster"
aks_dns_prefix      = "prodaks"
node_count          = 3
vm_size             = "Standard_DS3_v2"
