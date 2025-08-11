
provider "google" {
  credentials = file(var.credentials_file)
  project = var.project_id
  region = var.region
  zone = var.zone
}

resource "google_compute_instance" "default"{
  name = "devops-vm"
  machine_type = "e2-medium"
  zone = var.zone

  boot_disk {
    initialize_params{
      image = "debian-cloud/debian-11"
    }
  }
  
  network_interface {
    network = "default"
 
    access_config {}
  }

  tags = ["web"]
}


