# This file configures the Azure provider for Terraform.
# It specifies the required provider version and the Azure subscription to use.
# Ensure you have the Azure CLI installed and authenticated before running Terraform commands.


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c41b48f1-2095-4fcf-8130-aa3772b2d4a0"
}