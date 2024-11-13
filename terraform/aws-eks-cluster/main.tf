module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.0"

  name                 = "${var.cluster_name}-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = ["${var.aws_region}a", "${var.aws_region}b"]
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets       = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "${var.cluster_name}-vpc"
  }
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.29.0"
  cluster_name    = var.cluster_name
  cluster_version = "1.31"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size  = var.node_group_size
      max_size      = var.max_node_group_size
      min_size      = var.min_node_group_size
      instance_type = var.node_instance_type
    }
  }
}
