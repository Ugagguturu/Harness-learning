packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}


variable "project_id" {
  type    = string
  default = "dev-bivouac-441702-t4"
}

variable "source_image" {
  type    = string
  default = "debian-12-bookworm-v20241112"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "ssh_username" {
  type    = string
  default = "root"
}

variable "image_family" {
  type    = string
  default = "harness-img-family"
}
