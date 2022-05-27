resource "google_compute_network" "london_8" {
  name        = "london-8"
  description = "Used for the London 8 cohort."

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "server" {
  name        = "server"
  description = "Subnet for a server to practice ssh and Docker."

  network = google_compute_network.london_8.id

  ip_cidr_range = "10.1.0.0/20"
  region        = "europe-west1"
  private_ip_google_access = true
}
