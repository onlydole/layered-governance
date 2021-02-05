# Configures the Flux provider
provider "flux" {}

# Used to generate Kubernetes manifests for deploying Flux.
data "flux_install" "main" {
  target_path = var.target_path
}

# Used to generate manifests for reconciling the specified repository path on the cluster.
data "flux_sync" "main" {
  target_path = var.target_path
  url         = "ssh://git@github.com/${var.github_owner}/${var.repository_name}.git"
  branch      = var.branch
}
