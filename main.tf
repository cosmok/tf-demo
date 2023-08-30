moved {
  from =  google_cloud_run_v2_service.default
  to   =  module.service.google_cloud_run_v2_service.default
}
moved {
  from =  google_cloud_run_v2_service_iam_binding.binding
  to   = module.service.google_cloud_run_v2_service_iam_binding.binding
}
module "service" {
  source = "../modules/run"
  application_env = var.application_env
  image_url = var.image_url
  service_location = var.service_location
  project_id = var.project_id
  application_name = var.application_name
}