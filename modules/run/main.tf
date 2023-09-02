resource "google_cloud_run_v2_service" "default" {
  name     = var.application_name
  location = "australia-southeast1"
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = var.image_url
      ports {
        container_port = 5000
      }
      env {
        name = "APP_ENV"
        value = var.application_env
      }
    }
  }
}

resource "google_cloud_run_v2_service_iam_binding" "binding" {
  project = google_cloud_run_v2_service.default.project
  location = google_cloud_run_v2_service.default.location
  name = google_cloud_run_v2_service.default.name
  role = "roles/run.invoker"
  members = [
    "allUsers",
  ]
}