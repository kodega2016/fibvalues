resource "aws_security_group" "fibvalues_sg" {
  name        = "fibvalues_sg"
  description = "Allow fibvalues application traffic"
  vpc_id      = data.aws_vpc.default.id
  tags = {
    Name = "fibvalues_sg"
  }

  ingress {
    description = "HTTP Port"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



resource "aws_security_group" "fibvalues_sg_internal" {
  name        = "fibvalues_sg_internal"
  description = "Allow traffic for fibvalues application to redis and postgres"
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name = "fibvalues_sg"
  }

  ingress {
    description     = "Allow Postgres from application SG"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.fibvalues_sg.id]
  }

  ingress {
    description     = "Allow Redis from application SG"
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = [aws_security_group.fibvalues_sg.id]
  }

}
