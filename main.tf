provider "google" {
  credentials = file("C:/Users/sksus/Downloads/gleaming-lead-438006-g4-489a093cd328.json")
  project     = "gleaming-lead-438006-g4"
  region      = "us-central1"
}

# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-test"
  auto_create_subnetworks = false  # Disable auto subnet creation
}