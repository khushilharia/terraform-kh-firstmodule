terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.49.0"
    }
  }
}

provider "azurerm" {
  features {}
#   use_cli         = true
#   subscription_id = "6f0f938c-0599-4b69-9b56-09468ec24549"
}
