resource "google_compute_network" "london_8" {
  name        = "london-8"
  description = "Used for the London 8 cohort."

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "server" {
  name        = "server"
  description = "Subnet for a server to practice ssh and Docker."

  network = google_compute_network.london_8.id

  ip_cidr_range            = "10.1.0.0/20"
  region                   = "europe-west1"
  private_ip_google_access = true
}

resource "google_compute_firewall" "allow_ingress_to_public_server" {
  name = "allow-ingress-to-public-server"

  network     = google_compute_network.london_8.id
  target_tags = ["public-server"]

  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "8000-9000"] # range 8000-9000 to be assigned to students.
  }

}

resource "google_compute_firewall" "allow_egress_public_server" {
  name = "allow-egress-from-public-server"

  network     = google_compute_network.london_8.id
  target_tags = ["public-server"]

  direction          = "EGRESS"
  destination_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "all"
  }
}


resource "google_compute_address" "public" {
  name        = "london-8-server-public-address"
  description = "Public address for the London 8 server."

  address_type = "EXTERNAL"
  region       = "europe-west1"
}

