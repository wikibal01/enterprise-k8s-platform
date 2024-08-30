module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "18.23.0"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets
}

resource "aws_eks_node_group" "main" {
  cluster_name    = module.eks.cluster_name
  node_group_name = "main"
  node_role_arn   = module.eks.node_group_role_arn
  subnet_ids      = module.vpc.private_subnets

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_capacity
    min_size     = var.min_capacity
  }

  instance_types = ["t3.medium"]
  remote_access {
    ec2_ssh_key = var.ssh_key_name
  }
}
