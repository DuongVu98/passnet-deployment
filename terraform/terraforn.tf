terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "remotestatedemoaccount"
    container_name       = "tfstate"
    key                  = "kafka-confluent.tfstate"
  }
}
