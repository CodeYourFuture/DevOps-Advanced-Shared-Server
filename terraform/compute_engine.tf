resource "google_compute_instance" "server" {
  name         = "london-8-server"
  machine_type = "e2-standard-2"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts" # That is 20.04, not "from the year 2004" :-)
      size  = 30
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.server.self_link

    access_config {
      nat_ip = google_compute_address.public.address
    }
  }

  tags = ["public-server"]
}