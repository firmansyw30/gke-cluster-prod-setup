# Basic Google Cloud Variables
variable "project_id" {
  description = "The ID of the project in which to create the cluster."
  type        = string
  default     = "my-project-id"
}

variable "region" {
  description = "The region in which to create the cluster."
  type        = string
  default     = "asia-southeast2"
}

variable "zones" {
  description = "The zones in which to create the cluster."
  type        = list(string)
  default     = ["asia-southeast2-a", "asia-southeast2-b", "asia-southeast2-c"]
}

variable "credential_file" {
  description = "Path to the service account key file."
  type        = string
  default     = "credentials.json"
}

# Artifact Registry Variables
variable "artifact_registry_location" {
  description = "The location of the Artifact Registry repository."
  type        = string
  default     = "asia-southeast2"
}

variable "artifact_registry_repository_id" {
  description = "The ID of the Artifact Registry repository."
  type        = string
  default     = "my-repository"
}

variable "artifact_registry_format" {
  description = "The format of the Artifact Registry repository."
  type        = string
  default     = "DOCKER"
}

variable "artifact_registry_immutable_tags" {
  description = "Whether to enable immutable tags for the Artifact Registry repository."
  type        = bool
  default     = true
}

# GKE Variables
variable "cluster_name" {
  description = "The name of the cluster to create."
  type        = string
  default     = "my-cluster"
}

variable "node_pool_name" {
  description = "The name of the node pool to create."
  type        = string
  default     = "my-node-pool"
}

variable "node_count" {
  description = "The number of nodes in the node pool."
  type        = number
  default     = 3
}

variable "gke_enable_autoscaling" {
  description = "Whether to enable autoscaling for the node pool."
  type        = bool
  default     = true
}

variable "gke_subnetwork" {
  description = "Subnetwork name used by the GKE cluster."
  type        = string
  default     = "subnet-01"
}

variable "gke_machine_type" {
  description = "Machine type used for the GKE node pool."
  type        = string
  default     = "e2-medium"
}

variable "gke_node_locations" {
  description = "Node locations used by the GKE node pool."
  type        = list(string)
  default     = ["asia-southeast2-a", "asia-southeast2-b", "asia-southeast2-c"]
}

variable "gke_min_count" {
  description = "Minimum number of nodes in the GKE node pool autoscaler."
  type        = number
  default     = 1
}

variable "gke_max_count" {
  description = "Maximum number of nodes in the GKE node pool autoscaler."
  type        = number
  default     = 100
}

variable "gke_disk_size_gb" {
  description = "Disk size in GB for GKE node pool nodes."
  type        = number
  default     = 100
}

variable "gke_disk_type" {
  description = "Disk type for GKE node pool nodes."
  type        = string
  default     = "pd-standard"
}

variable "gke_image_type" {
  description = "Node image type for GKE node pool nodes."
  type        = string
  default     = "COS_CONTAINERD"
}

variable "gke_service_account" {
  description = "Service account email for GKE node pool nodes."
  type        = string
  default     = ""
}

variable "gke_initial_node_count" {
  description = "Initial node count for the GKE node pool."
  type        = number
  default     = 1
}

variable "gke_accelerator_count" {
  description = "GPU accelerator count for the GKE node pool."
  type        = number
  default     = 1
}

variable "gke_accelerator_type" {
  description = "GPU accelerator type for the GKE node pool."
  type        = string
  default     = "nvidia-l4"
}

variable "gke_gpu_driver_version" {
  description = "GPU driver version for the GKE node pool."
  type        = string
  default     = "LATEST"
}

variable "gke_gpu_sharing_strategy" {
  description = "GPU sharing strategy for the GKE node pool."
  type        = string
  default     = "TIME_SHARING"
}

variable "gke_max_shared_clients_per_gpu" {
  description = "Maximum shared clients per GPU for the GKE node pool."
  type        = number
  default     = 2
}

variable "gke_enable_filestore_csi_driver" {
  description = "Whether to enable Filestore CSI driver for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_enable_dns_cache" {
  description = "Whether to enable DNS cache for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_enable_http_load_balancing" {
  description = "Whether to enable HTTP load balancing for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_enable_network_policy" {
  description = "Whether to enable network policy for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_enable_horizontal_pod_autoscaling" {
  description = "Whether to enable horizontal pod autoscaling for the GKE cluster."
  type        = bool
  default     = true
}

variable "gke_local_ssd_count" {
  description = "Number of local SSDs to attach to each node in the GKE node pool."
  type        = number
  default     = 0
}

variable "gke_enable_node_spot" {
  description = "Whether to enable spot instances for the GKE node pool."
  type        = bool
  default     = false
}

variable "gke_enable_gcfs" {
  description = "Whether to enable GCFS for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_enable_gvnic" {
  description = "Whether to enable GVNIC for the GKE cluster."
  type        = bool
  default     = false
}

variable "gke_node_pools_logging_variant" {
  description = "Logging variant for the GKE node pools."
  type        = string
  default     = "DEFAULT"
}

variable "gke_node_pools_auto_repair" {
  description = "Whether to enable auto repair for the GKE node pools."
  type        = bool
  default     = true
}

variable "gke_node_pools_auto_upgrade" {
  description = "Whether to enable auto upgrade for the GKE node pools."
  type        = bool
  default     = true
}

variable "gke_node_pools_preemptible" {
  description = "Whether to enable preemptible instances for the GKE node pools."
  type        = bool
  default     = false
}


# VPC Variables
variable "vpc_network_name" {
  description = "Name of the VPC network."
  type        = string
  default     = "example-vpc"
}

variable "vpc_routing_mode" {
  description = "Routing mode for the VPC network."
  type        = string
  default     = "GLOBAL"
}

variable "vpc_subnets" {
  description = "Subnets to create in the VPC."
  type = list(object({
    subnet_name               = string
    subnet_ip                 = string
    subnet_region             = string
    subnet_private_access     = optional(bool)
    subnet_flow_logs          = optional(bool)
    subnet_flow_logs_interval = optional(string)
    subnet_flow_logs_sampling = optional(number)
    subnet_flow_logs_metadata = optional(string)
    description               = optional(string)
  }))
  default = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "asia-southeast2"
    },
    {
      subnet_name      = "subnet-02"
      subnet_ip        = "10.10.20.0/24"
      subnet_region    = "asia-southeast2"
      subnet_flow_logs = true
      description      = "This subnet has a description"
    },
    {
      subnet_name      = "subnet-03"
      subnet_ip        = "10.10.30.0/24"
      subnet_region    = "asia-southeast2"
      subnet_flow_logs = true
    }
  ]
}

variable "vpc_secondary_ranges" {
  description = "Secondary ranges keyed by subnet name."
  type = map(list(object({
    range_name    = string
    ip_cidr_range = string
  })))
  default = {
    subnet-01 = [
      {
        range_name    = "subnet-01-pods"
        ip_cidr_range = "192.168.64.0/24"
      },
      {
        range_name    = "subnet-01-services"
        ip_cidr_range = "192.168.65.0/24"
      }
    ]
    subnet-02 = [
      {
        range_name    = "subnet-02-pods"
        ip_cidr_range = "192.168.66.0/24"
      },
      {
        range_name    = "subnet-02-services"
        ip_cidr_range = "192.168.67.0/24"
      }
    ]
    subnet-03 = [
      {
        range_name    = "subnet-03-pods"
        ip_cidr_range = "192.168.68.0/24"
      },
      {
        range_name    = "subnet-03-services"
        ip_cidr_range = "192.168.69.0/24"
      }
    ]
  }
}

variable "vpc_routes" {
  description = "Custom routes for the VPC network."
  type = list(object({
    name                   = string
    description            = string
    destination_range      = string
    tags                   = list(string)
    next_hop_internet      = optional(bool)
    next_hop_instance      = optional(string)
    next_hop_instance_zone = optional(string)
  }))
  default = [
    {
      name              = "egress-internet"
      description       = "route through IGW to access internet"
      destination_range = "0.0.0.0/0"
      tags              = ["egress-inet"]
      next_hop_internet = true
    }
  ]
}

