# Usingmultiple workspaces:
terraform {

  backend "remote" {
        organization     = "atanasc-2"

    workspaces {
      name = "environment-dev"
    }
  }
}

resource "random_pet" "random_name" {
  length    = "4"
  separator = "-"
}

output "name" {
  value = "${random_pet.random_name.id}"
}
