terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.79.0"
    }
  }
  backend "gcs" {
    prefix = "tf-state/production"
    bucket = "devops-tf-397305"
  }
}