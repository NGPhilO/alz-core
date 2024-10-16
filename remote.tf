#remote.tf

# Get the connectivity and management configuration
# settings from outputs via the respective terraform
# remote state files

data "terraform_remote_state" "connectivity" {
  backend = "azurerm"

  config = {
    resource_group_name  = "tfstate-landing-zone-dev"
    storage_account_name = "tfstatew8poc"
    container_name       = "tfstate-landing-zone-dev"
    key                  = "connectivity-terraform.tfstate"
  }
}

data "terraform_remote_state" "management" {
  backend = "azurerm"

  config = {
    resource_group_name  = "tfstate-landing-zone-dev"
    storage_account_name = "tfstatew8poc"
    container_name       = "tfstate-landing-zone-dev"
    key                  = "mgmt-terraform.tfstate"
  }
}