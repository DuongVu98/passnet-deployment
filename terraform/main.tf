terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {
  }
}

module "my_server" {
  source                 = "github.com/DuongVu98/terraform-azure-linux-vm-module"
  server_rg              = "passnet-rg"
  server_location        = "westus2"
  server_resource_prefix = "passnet-prefix"
  server_address_prefix  = "1.0.2.0/24"
  server_address_space   = "1.0.0.0/22"
  server_name            = "kafka-confluent-server"
  vm_size                = "Standard_B2s"
  admin_username         = "tungduong"
  ssh_key_path           = "../ssh/id_rsa.pub"
  environment            = "development"
}
