terraform {
  backend "azurerm" {
    resource_group_name   = "rg-prod"                  # The resource group where the storage account is located
    storage_account_name  = "tfstatestorageacct11"        # The name of the storage account
    container_name        = "terraform-state"           # The name of the container to store the state file
    key                   = "terraform.tfstate"         # The name of the state file within the container
  }
}
