module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.5.1"

  cluster_name    = var.eks_name
  cluster_version = "1.24"

  vpc_id                         = var.vpc_id
  subnet_ids                     = var.subnet_ids
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

  }

  eks_managed_node_groups = {
    one = {
      name = var.node_gp_name_1

      instance_types = [var.instance_types_a]

      min_size     = var.min_size_1
      max_size     = var.max_size_1
      desired_size = var.des_size_1
    }

    two = {
      name = var.node_gp_name_2

      instance_types = [var.instance_types_b]

      min_size     = var.min_size_2
      max_size     = var.max_size_2
      desired_size = var.des_size_2
    }
  }
}