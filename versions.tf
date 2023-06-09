terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.30.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.29.0"
    }
  }
  #terraform {
  #required_version = ">= 1.3.7"

  #required_providers {
  #  azurerm = {
  #    source  = "hashicorp/azurerm"
  #    version = "~>3.57"
  #  }
  #  azuread = {
  #   source  = "hashicorp/azuread"
  #   version = "~> 2.39"
  # }
  #}
  backend "azurerm" {
    resource_group_name  = "rg-lab-tfstate"
    storage_account_name = "nostfstatestg"
    container_name       = "tfstate-ccoe-lab"
    key                  = "atlantis-temp-terraform.tfstate"
    tenant_id            = "930a470b-f629-4f93-a65b-bad14153f14f"
    subscription_id      = "a5a70928-a6c8-4495-b752-a7ab1d7768b7"
  }
}

provider "azurerm" {
  #tenant_id       = var.tenant_id                          # nosportugal.onmicrosoft.com
  #subscription_id = "a5a70928-a6c8-4495-b752-a7ab1d7768b7" # ccoe-lab
  features {}
}
