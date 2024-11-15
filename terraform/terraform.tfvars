aws_region          = "eu-north-1"
cluster_name        = "assignment-shahar-cluster"
node_group_size     = 2
node_instance_type  = "t3.medium"
min_node_group_size = 2
max_node_group_size = 5
environment         = "dev"
vpc_cidr            = "10.0.0.0/16"
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
eks_version         = "1.31"
