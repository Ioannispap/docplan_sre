variable "region" {
    default = "eu-north-1"
}
variable "eks_prefix" {
    default = "dockplan_eks"
}
variable "env" {}
variable "eks_version" {}
variable "node_gp_name_1" {}
variable "node_gp_name_2" {}
variable "instance_types_a" {} 
variable "instance_types_b" {} 
variable "max_size_1" {}
variable "max_size_2" {}
variable "min_size_1" {}
variable "min_size_2" {}
variable "des_size_1" {}
variable "des_size_2" {}

variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
variable "db_instance_class" {}
variable "db_allocated_storage" {}
variable "db_max_allocated_storage" {}
variable "db_multi_az" {}
variable "db_storage_encrypted" {}