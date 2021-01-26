terraform {
  required_version = "~> 0.14"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    kubernetes-alpha = {
      source  = "hashicorp/kubernetes-alpha"
      version = "~> 0.2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0"
    }
  }
}
