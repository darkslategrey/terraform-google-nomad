# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "gcp_project" {
  description = "The name of the GCP Project where all resources will be launched."
  default = "courseur-1234"
}

variable "gcp_region" {
  description = "The region in which all GCP resources will be launched."
  default = "europe-west4"
}

variable "gcp_zone" {
  description = "The region in which all GCP resources will be launched."
  default = "europe-west4-a"
}

# Nomad Server cluster

variable "nomad_consul_server_cluster_name" {
  description = "The name of the Nomad/Consul Server cluster. All resources will be namespaced by this value. E.g. nomad-server-prod"
  default = "nomad-server-prod"
}

variable "nomad_consul_server_source_image" {
  description = "The Google Image used to launch each node in the Nomad/Consul Server cluster."
  default = "nomad-consul-6058-07-07-052007"
}

# Nomad Client cluster

variable "nomad_client_cluster_name" {
  description = "The name of the Nomad client cluster. All resources will be namespaced by this value. E.g. consul-server-prod"
  default = "nomad-client-prod"
}

variable "nomad_client_source_image" {
  description = "The Google Image used to launch each node in the Nomad client cluster."
  default = "nomad-consul-6058-07-07-052007"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

# Nomad Server cluster

variable "nomad_consul_server_cluster_size" {
  description = "The number of nodes to have in the Nomad Server cluster. We strongly recommended that you use either 3 or 5."
  default = 3
}

variable "nomad_consul_server_cluster_machine_type" {
  description = "The machine type of the Compute Instance to run for each node in the Vault cluster (e.g. n1-standard-1)."
  default = "g1-small"
}

# Nomad Client cluster

variable "nomad_client_cluster_size" {
  description = "The number of nodes to have in the Nomad client cluster. This number is arbitrary."
  default = 3
}

variable "nomad_client_machine_type" {
  description = "The machine type of the Compute Instance to run for each node in the Nomad client cluster (e.g. n1-standard-1)."
  default = "g1-small"
}
