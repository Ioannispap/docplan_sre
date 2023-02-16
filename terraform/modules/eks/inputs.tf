variable "eks_name" {}
variable "eks_version" {}
variable "subnet_ids"   {
    type = list(string)
}
variable "vpc_id" {}
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