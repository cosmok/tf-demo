terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.79.0"
    }
  }
  backend "gcs" {
    prefix = "tf-state/staging"
    bucket = "devops-tf-397305"
  }
}