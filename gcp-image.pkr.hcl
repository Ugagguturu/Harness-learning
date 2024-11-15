packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}

source "googlecompute" "gcp-image" {
  project_id       = "dev-bivouac-441702-t4"
  source_image     = "debian-12-bookworm-v20241112" # Example source image
  zone             = "us-central1-a"
  machine_type     = "e2-medium"
  scopes           = ["https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/compute"]
  ssh_username     = "root" # Set the username here
  use_os_login     = "true" # Optional, enables OS login
}


build {
  sources = ["source.googlecompute.gcp-image"]

  provisioner "shell" {
    inline = ["sudo apt-get update -y", "sudo apt-get install nginx -y"]
  }
}
