# Configure the GitHub provider
provider "github" {}

# Creates a key used for Flux deployments
resource "tls_private_key" "main" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "github_repository_deploy_key" "main" {
  title      = "flux"
  repository = github_repository.main.name
  key        = tls_private_key.main.public_key_openssh
  read_only  = true
}

# Creates our GitHub repository
resource "github_repository" "main" {
  name       = var.repository_name
  visibility = var.repository_visibility
  auto_init  = true
}

# Ensures we have a main branch on our GitHub repository
resource "github_branch_default" "main" {
  repository = github_repository.main.name
  branch     = var.branch
}

# These three resources create files that are uploaded to the Flux cluster configuration repo
resource "github_repository_file" "install" {
  repository = github_repository.main.name
  file       = data.flux_install.main.path
  content    = data.flux_install.main.content
  branch     = var.branch
}

resource "github_repository_file" "sync" {
  repository = github_repository.main.name
  file       = data.flux_sync.main.path
  content    = data.flux_sync.main.content
  branch     = var.branch
}

resource "github_repository_file" "kustomize" {
  repository = github_repository.main.name
  file       = data.flux_sync.main.kustomize_path
  content    = data.flux_sync.main.kustomize_content
  branch     = var.branch
}
