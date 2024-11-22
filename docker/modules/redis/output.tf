output "redis_container_id" {
  description = "The ID of the Redis container"
  value       = docker_container.redis.id
}
