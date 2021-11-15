resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  iam_database_authentication_enabled = true
  storage_encrypted = true
  monitoring_interval = true
  enabled_cloudwatch_logs_exports = ["general", "error", "slowquery"]
  tags = {
+   Environment = "dev"
+   Owner = "apps-team"
+ }
  multi_az = true
}
