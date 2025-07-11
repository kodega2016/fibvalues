resource "aws_db_instance" "this" {
  allocated_storage      = 10
  db_name                = var.postgres_db_name
  engine                 = "postgresql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = var.postgres_username
  password               = var.postgres_password
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.fibvalues_sg_internal.id]
  tags = {
    Name = "fibvalues-postgres-db"
  }
}
