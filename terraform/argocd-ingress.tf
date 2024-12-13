resource "kubectl_manifest" "ingress_argocd" {
  yaml_body = templatefile("${path.module}/templates/manifests/vs-argocd.yaml", {
      ARGOCD_DOMAIN_NAME = local.argocd_domain_name
    }
  )
}
