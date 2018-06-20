variable "my_name" {}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "dev-playground-1019"
  region      = "asia-northeast-1"
}

resource "google_compute_instance" "hello_instance" {
  name         = "terraform-${var.my_name}"
  machine_type = "g1-small"
  zone         = "asia-northeast1-a"

  tags = ["foo", "bar", "terra"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    terraform = "true"
  }
}

output "ip" {
  value = "${google_compute_instance.hello_instance.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "instance_id" {
  value = "${google_compute_instance.hello_instance.instance_id}"
}
