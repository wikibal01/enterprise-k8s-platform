module "flux" {
  source = "git::https://github.com/fluxcd/terraform-provider-flux.git//examples/aws-eks"

  aws_eks_cluster_name = module.eks.cluster_name
  aws_eks_kubeconfig   = data.aws_eks_cluster.main.kubeconfig
  install_helm         = true

  flux_version         = var.flux_version
  flux_namespace       = var.flux_namespace
  flux_sync_git_url    = var.flux_sync_git_url
  flux_sync_git_branch = var.flux_sync_git_branch
  flux_sync_interval   = var.flux_sync_interval
  flux_helm_version    = var.flux_helm_version
}
