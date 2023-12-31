variable "image_url" {
  type = string
  description = "Artifact registry url of the docker image used by the service."
}

variable "service_location" {
  type = string
  description = "GCP region where the service is to be hosted."
}

variable "project_id" {
  type = string
  description = "Id of the GCP project where the service is tobe hosted."
}

variable "application_env" {
  type = string
  description = "Environment that this service sits in."
  validation {
    condition     = contains(["staging", "production"], var.application_env)
    error_message = "Valid values for var: application_env are (staging, production)."
  }
}

variable "application_name" {
  description = "Named of the service."
  default = "cloudrun-service-demo"
}