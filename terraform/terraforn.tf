terraform {
  backend "remote" {
    organization = "tonyorg"

    workspaces {
      name = "passnet"
    }
  }
}