#################################
## TF REMOTE STATE
#################################

terraform {
  backend "s3" {
    bucket         = "docplan-infra"
    key            = "eks/dev/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "infrastructure_statelock"
  }
}

provider "aws" {
  region = var.region
}

#################################
## MODULE
#################################

module "docplan_module_eks" {
    source = "../../../modules/eks/"

    eks_name          = "${var.eks_prefix}-${var.env}-${var.region}"
    eks_version       = var.eks_version

    vpc_id            = local.vpc_id
    subnet_ids        = local.subnet_ids

    node_gp_name_1    = var.node_gp_name_1
    node_gp_name_2    = var.node_gp_name_2
    instance_types_a  = var.instance_types_a
    instance_types_b  = var.instance_types_b
    min_size_1        = var.min_size_1
    max_size_1        = var.max_size_1
    des_size_1        = var.des_size_1
    min_size_2        = var.min_size_2
    max_size_2        = var.max_size_2
    des_size_2        = var.des_size_2

}

module "docplan_module_rds" {
  source = "../../../modules/rds/"

  db_name                        = var.db_name
  identifier                     = "${var.db_name}${var.env}"
  db_username                    = var.db_username
  #password        = data.aws_ssm_parameter.rds_passwd.value
  db_password                    = var.db_password
  db_instance_class              = var.db_instance_class
  db_allocated_storage           = var.db_allocated_storage
  db_max_allocated_storage       = var.db_max_allocated_storage
  db_multi_az                    = var.db_multi_az
  db_storage_encrypted           = var.db_storage_encrypted
}