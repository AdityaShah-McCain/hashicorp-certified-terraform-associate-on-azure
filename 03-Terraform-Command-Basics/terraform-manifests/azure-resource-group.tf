# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  # registory.terraform.io
  required_providers { # in our case, the provider is azure
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider (this is the provider block)
provider "azurerm" {
  features {}
  subscription_id = "f7f5f1df-fec4-41dc-a919-6f2ece0a4569"
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}
