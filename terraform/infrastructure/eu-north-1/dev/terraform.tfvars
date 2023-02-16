env                 = "dev"
eks_prefix          = "dockplan_eks"
eks_version         = "1.24"

node_gp_name_1      = "node-group-1"
node_gp_name_2      = "node-group-2"
instance_types_a    = "t3.small" 
instance_types_b    = "t3.small" 
min_size_1          = "1"
max_size_1          = "2"
des_size_1          = "1"
min_size_2          = "1"
max_size_2          = "2"
des_size_2          = "1"  

db_name                  = "stocholm"
db_username             = "test1"
db_password             = "test1_pass"
db_instance_class          = "db.t3.small"
db_allocated_storage       = "10"
db_max_allocated_storage   = "100"
db_multi_az                = "false"
db_storage_encrypted       = "false"