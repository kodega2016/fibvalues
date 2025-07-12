resource "aws_db_instance" "this" {
  identifier             = "fibvalues-postgres-db"
  allocated_storage      = 10
  db_name                = var.postgres_db_name
  engine                 = "postgres"
  engine_version         = "15"
  instance_class         = "db.t3.micro"
  username               = var.postgres_username
  password               = var.postgres_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.fibvalues_sg_internal.id]
  tags = {
    Name = "fibvalues-postgres-db"
  }


  lifecycle {
    ignore_changes = [
      password, # Ignore changes to the password
    ]
  }
}
