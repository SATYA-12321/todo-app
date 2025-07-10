# This file configures the Azure provider for Terraform.
# It specifies the required provider version and sets up the provider with the necessary features.


resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}