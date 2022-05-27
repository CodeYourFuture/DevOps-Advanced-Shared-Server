terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.16.0"
    }
  }
}

provider "google" {
  project = "cyf-slack-relay"
  region  = "eu-west1"
  zone    = "eu-west1-a"
}