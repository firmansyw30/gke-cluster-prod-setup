project_id = ""
region     = ""
zones      = []

# Artifact Registry Variables
artifact_registry_repository_id = ""
artifact_registry_location = ""
artifact_registry_format = ""
artifact_registry_immutable_tags = false

# GKE variables
cluster_name                   = ""
node_pool_name                 = ""
node_count                     = 0
gke_enable_autoscaling         = false
gke_subnetwork                 = ""
gke_machine_type               = ""
gke_node_locations             = []
gke_min_count                  = 0
gke_max_count                  = 0
gke_disk_size_gb               = 0
gke_disk_type                  = ""
gke_image_type                 = ""
gke_service_account            = ""
gke_initial_node_count         = 0
gke_accelerator_count          = 0
gke_accelerator_type           = ""
gke_gpu_driver_version         = ""
gke_gpu_sharing_strategy       = ""
gke_max_shared_clients_per_gpu = 0
gke_node_pools_logging_variant = ""
gke_enable_network_policy      = false
gke_workload identities         = false
gke_enabled_shielded_nodes     = false
gke_enable_http_load_balancing = false

# VPC variables
vpc_network_name = ""
vpc_routing_mode = ""
vpc_subnets = []
vpc_secondary_ranges = {}
vpc_routes = []

