output "redis_endpoint" {
  description = "The endpoint of the Redis cluster"
  value       = aws_elasticache_cluster.this.cache_nodes[0].address
}

output "postgres_endpoint" {
  description = "The endpoint of the PostgreSQL database"
  value       = aws_db_instance.this.endpoint
}
