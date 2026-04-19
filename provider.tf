terraform {
  required_version = "1.14.8"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.28.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "7.28.0"
    }

    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = "3.1.0"
    # }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credential_file)
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credential_file)
}
