resource "aws_elasticache_cluster" "this" {
  cluster_id         = "fibvalues-redis-cluster"
  engine             = "redis"
  node_type          = "cache.t2.micro"
  num_cache_nodes    = 1
  engine_version     = "7.0"
  port               = 6379
  security_group_ids = [aws_security_group.fibvalues_sg_internal.id]
  tags = {
    Name = "fibvalues-redis-cluster"
  }
}
