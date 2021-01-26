resource "kubernetes_manifest" "owner_constraint" {
  provider   = kubernetes-alpha
  manifest   = yamldecode(file("${path.module}/policies/all-must-have-owner/constraint.yaml"))
  depends_on = [helm_release.gatekeeper, kubernetes_manifest.owner_template]
}

resource "kubernetes_manifest" "owner_template" {
  provider   = kubernetes-alpha
  manifest   = yamldecode(file("${path.module}/policies/all-must-have-owner/template.yaml"))
  depends_on = [helm_release.gatekeeper]
}
