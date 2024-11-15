source "googlecompute" "gcp-image" {
  project_id       = "dev-bivouac-441702-t4"
  source_image     = "debian-11-bullseye-v20230905" # Example source image
  zone             = "us-central1-a"
  machine_type     = "e2-medium"
  use_os_login     = "true" # Optional, enables OS login
}

build {
  sources = ["source.googlecompute.gcp-image"]

  provisioner "shell" {
    inline = ["sudo apt-get update -y", "sudo apt-get install nginx -y"]
  }
}
