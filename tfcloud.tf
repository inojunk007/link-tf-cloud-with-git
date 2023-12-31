terraform {
  cloud {
    organization = "ifthekar"

    workspaces {
      name = "myterraform"
    }
  }
}