module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.29.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  manage_aws_auth_configmap = true

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size  = var.node_group_size
      max_size      = var.max_node_group_size
      min_size      = var.min_node_group_size
      instance_type = var.node_instance_type
    }
  }
}
