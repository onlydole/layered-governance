terraform {
  required_version = "~> 0.14"

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "4.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.13"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.9"
    }
    flux = {
      source  = "fluxcd/flux"
      version = "~> 0.0"
    }
  }
}
