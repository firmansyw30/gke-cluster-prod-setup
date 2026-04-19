module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 18.0"

  project_id   = var.project_id
  network_name = var.vpc_network_name
  routing_mode = var.vpc_routing_mode

  subnets          = var.vpc_subnets
  secondary_ranges = var.vpc_secondary_ranges
  routes           = var.vpc_routes
}