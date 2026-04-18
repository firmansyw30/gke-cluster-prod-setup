terraform {
  required_version = "1.14.8"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.28" # To satisfy the highest minimum requirement from VPC module subnets
    }
  }

  cloud {
    
    organization = "GCP-Experimental"

    workspaces {
      name = "GKE-Experimental"
    }
  }
}
provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("credentials.json") # Update with the actual path to your credentials file
}
