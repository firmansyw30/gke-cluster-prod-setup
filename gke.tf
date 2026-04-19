# google_client_config and kubernetes provider must be explicitly specified like the following.
data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google" # Use the official module source
  version                    = "44.0.0"
  project_id                 = var.project_id
  name                       = var.cluster_name
  region                     = var.region
  zones                      = var.zones
  network                    = module.vpc.network_name
  subnetwork                 = var.gke_subnetwork
  ip_range_pods              = var.vpc_secondary_ranges[var.gke_subnetwork][0].range_name
  ip_range_services          = var.vpc_secondary_ranges[var.gke_subnetwork][1].range_name
  http_load_balancing        = var.gke_enable_http_load_balancing
  horizontal_pod_autoscaling = var.gke_enable_horizontal_pod_autoscaling
  network_policy             = var.gke_enable_network_policy
  filestore_csi_driver       = var.gke_enable_filestore_csi_driver
  dns_cache                  = var.gke_enable_dns_cache

  node_pools = [
    {
      name                       = var.node_pool_name
      node_count                 = var.node_count
      autoscaling                = var.gke_enable_autoscaling
      machine_type               = var.gke_machine_type
      disk_size_gb               = var.gke_disk_size_gb
      disk_type                  = var.gke_disk_type
      image_type                 = var.gke_image_type
      service_account            = var.gke_service_account
      initial_node_count         = var.gke_initial_node_count
      node_locations             = join(",", var.gke_node_locations)
      min_count                  = var.gke_min_count
      max_count                  = var.gke_max_count
      local_ssd_count            = var.gke_local_ssd_count
      spot                       = var.gke_enable_node_spot
      enable_gcfs                = var.gke_enable_gcfs
      enable_gvnic               = var.gke_enable_gvnic
      logging_variant            = var.gke_node_pools_logging_variant
      auto_repair                = var.gke_node_pools_auto_repair
      auto_upgrade               = var.gke_node_pools_auto_upgrade
      accelerator_count          = var.gke_accelerator_count
      accelerator_type           = var.gke_accelerator_type
      gpu_driver_version         = var.gke_gpu_driver_version
      gpu_sharing_strategy       = var.gke_gpu_sharing_strategy
      max_shared_clients_per_gpu = var.gke_max_shared_clients_per_gpu
      preemptible                = var.gke_node_pools_preemptible
    },
  ]

  node_pools_oauth_scopes = {
    all = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  node_pools_labels   = { all = {} }
  node_pools_metadata = { all = {} }
  node_pools_taints   = { all = [] }
  node_pools_tags     = { all = [] }
}