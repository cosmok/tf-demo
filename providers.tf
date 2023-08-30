terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.79.0"
    }
  }
}

provider "google" {
  region  = "australia-southeast1"
  project = "devops-tf-397305"
}