module "vpc" {
  source               = "./modules/vpc"
  name                 = "${var.cluster_name}-vpc"
  cidr                 = var.vpc_cidr
  azs                  = ["${var.aws_region}a", "${var.aws_region}b"]
  private_subnets      = var.vpc_private_subnets
  public_subnets       = var.vpc_public_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
}

module "eks" {
  source              = "./modules/eks"
  cluster_name        = var.cluster_name
  cluster_version     = var.eks_version
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.private_subnets
  node_group_size     = var.node_group_size
  node_instance_type  = var.node_instance_type
  min_node_group_size = var.min_node_group_size
  max_node_group_size = var.max_node_group_size
}

module "ecr" {
  source      = "./modules/ecr"
  aws_region  = var.aws_region
  environment = var.environment
}
