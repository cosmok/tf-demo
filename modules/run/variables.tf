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
  description = "Application env"
}

variable "application_name" {
  description = "Named of the service."
  default = "cloudrun-service-demo"
}