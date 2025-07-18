variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}


variable "application_name" {
  description = "The name of the Elastic Beanstalk application"
  type        = string
  default     = "fibvalues"
}

variable "environment_name" {
  description = "The name of the Elastic Beanstalk environment"
  type        = string
  default     = "fibvalues-env"
}

variable "solution_stack_name" {
  description = "The solution stack name for the Elastic Beanstalk environment"
  type        = string
  default     = "64bit Amazon Linux 2023 v4.6.0 running Docker"
}

variable "instance_type" {
  type        = string
  description = "The type of EC2 instance to use for the Elastic Beanstalk environment"
}

variable "postgres_db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
  default     = "fibvalues_db"
}

variable "postgres_username" {
  description = "The username for the PostgreSQL database"
  type        = string
  default     = "kodega"
}

variable "postgres_password" {
  description = "The password for the PostgreSQL database"
  type        = string
}
