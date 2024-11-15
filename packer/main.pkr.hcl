packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}

# Include other configuration files
include "variables" {
  path = "./variables.pkr.hcl"
}

include "source" {
  path = "./source.pkr.hcl"
}

include "provisioners" {
  path = "./provisioners.pkr.hcl"
}

