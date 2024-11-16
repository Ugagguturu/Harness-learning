source "googlecompute" "gcp-image" {
  project_id       = var.project_id
  source_image     = var.source_image
  zone             = var.zone
  machine_type     = var.machine_type
  scopes           = ["https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/compute"]
  ssh_username     = var.ssh_username
  use_os_login     = "true" # Optional, enables OS login
  image_family     = var.image_family
}

