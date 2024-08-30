output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_security_group" {
  value = module.eks.cluster_security_group_id
}

output "eks_worker_iam_role" {
  value = aws_eks_node_group.main.node_role_arn
}
