
provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_container_cluster" "primary" {
  name     = "autopilot-cluster"
  location = var.region

  enable_autopilot = true
  deletion_protection = false

  ip_allocation_policy {}
}
