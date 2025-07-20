variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "test"
}

variable "vpc_cidr_block" {
  description = "Cidr range for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "env" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
  default     = "test"
}

variable "repo_name" {
  description = "ECR repository name"
  type        = string
  default     = "test"
}

variable "lambda_image_uri" {
  description = "ECR repository URL"
  type        = string
  default     = "975049998898.dkr.ecr.us-east-1.amazonaws.com/test:latest"
}
