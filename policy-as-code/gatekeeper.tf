resource "helm_release" "gatekeeper" {
  name = "gatekeeper"

  repository = "https://open-policy-agent.github.io/gatekeeper/charts"
  chart      = "gatekeeper"
}
