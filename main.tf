provider "google" {
  project     = "gleaming-lead-438006-g4"
  region      = "us-central1"
}

# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-shaiksaleemafroz"
  auto_create_subnetworks = false  # Disable auto subnet creation
}