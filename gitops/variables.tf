variable "github_owner" {
  type    = string
  default = "onlydole"
}

variable "github_token" {
  type = string
}

variable "repository_name" {
  type    = string
  default = "test-provider"
}

variable "repository_visibility" {
  type    = string
  default = "public"
}

variable "branch" {
  type    = string
  default = "main"
}

variable "target_path" {
  type    = string
  default = "staging-cluster"
}
