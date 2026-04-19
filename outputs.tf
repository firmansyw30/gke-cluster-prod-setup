output "project_id" {
	description = "Active Google Cloud project ID."
	value       = var.project_id
}

output "region" {
	description = "Primary region used by this stack."
	value       = var.region
}

output "vpc_network_name" {
	description = "VPC network name created by the VPC module."
	value       = module.vpc.network_name
}

output "vpc_network_id" {
	description = "VPC network ID created by the VPC module."
	value       = module.vpc.network_id
}

output "vpc_network_self_link" {
	description = "VPC network self link."
	value       = module.vpc.network_self_link
}

output "vpc_subnets_names" {
	description = "Names of all created subnets."
	value       = module.vpc.subnets_names
}

output "vpc_subnets_self_links" {
	description = "Self links of all created subnets."
	value       = module.vpc.subnets_self_links
}

output "vpc_secondary_ranges" {
	description = "Secondary IP ranges configured in the VPC module."
	value       = module.vpc.subnets_secondary_ranges
}

output "gke_cluster_name" {
	description = "GKE cluster name."
	value       = module.gke.name
}

output "gke_cluster_id" {
	description = "GKE cluster ID."
	value       = module.gke.cluster_id
}

output "gke_cluster_location" {
	description = "GKE cluster location."
	value       = module.gke.location
}

output "gke_cluster_region" {
	description = "GKE cluster region."
	value       = module.gke.region
}

output "gke_cluster_zones" {
	description = "Zones used by the GKE cluster."
	value       = module.gke.zones
}

output "gke_cluster_endpoint" {
	description = "GKE API server endpoint."
	value       = module.gke.endpoint
	sensitive   = true
}

output "gke_cluster_ca_certificate" {
	description = "Base64-encoded cluster CA certificate."
	value       = module.gke.ca_certificate
	sensitive   = true
}

output "gke_node_pools_names" {
	description = "GKE node pool names."
	value       = module.gke.node_pools_names
}

output "gke_node_pools_versions" {
	description = "GKE node pool versions by pool name."
	value       = module.gke.node_pools_versions
}

output "gke_workload_identity_pool" {
	description = "Workload Identity pool configured for the GKE cluster."
	value       = module.gke.identity_namespace
}

output "artifact_registry_repository_id" {
	description = "Artifact Registry repository ID."
	value       = google_artifact_registry_repository.my_repo.repository_id
}

output "artifact_registry_location" {
	description = "Artifact Registry repository location."
	value       = google_artifact_registry_repository.my_repo.location
}

output "artifact_registry_repository_name" {
	description = "Fully qualified Artifact Registry repository resource name."
	value       = google_artifact_registry_repository.my_repo.name
}

output "artifact_registry_repository_format" {
	description = "Artifact Registry repository format."
	value       = google_artifact_registry_repository.my_repo.format
}
