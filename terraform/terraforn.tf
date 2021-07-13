terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "passnetstorageaccount"
    container_name       = "passnettfstate"
    key                  = "kafka-confluent.tfstate"
  }
}
