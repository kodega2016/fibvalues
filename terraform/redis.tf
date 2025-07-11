resource "aws_elasticache_cluster" "this" {
  cluster_id           = "fibvalues-redis-cluster"
  engine               = "redis"
  node_type            = "t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  security_group_ids   = [aws_security_group.fibvalues_sg_internal.id]
  tags = {
    Name = "fibvalues-redis-cluster"
  }
}
