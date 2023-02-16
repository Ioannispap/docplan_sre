resource "aws_db_instance" "docplan_rds" {
  identifier                  = var.identifier
  name                        = var.db_name
  username                    = var.db_username
  instance_class              = var.db_instance_class
  password                    = var.db_password
  port                        = 3306
  engine                      = "mysql"
  engine_version              = "8.0.28"
  storage_type                = "gp2"
  allocated_storage           = var.db_allocated_storage
  max_allocated_storage       = var.db_max_allocated_storage
  multi_az                    = var.db_multi_az
  storage_encrypted           = var.db_storage_encrypted
  publicly_accessible         = "false"
  allow_major_version_upgrade = "true"
  auto_minor_version_upgrade  = "true"
  skip_final_snapshot         = "false"
  final_snapshot_identifier   = "${var.db_name}-snapshot-${md5(timestamp())}"
  copy_tags_to_snapshot       = "true"
  backup_retention_period     = 7
  apply_immediately           = true
  lifecycle {
    ignore_changes = [snapshot_identifier]
  }
}
