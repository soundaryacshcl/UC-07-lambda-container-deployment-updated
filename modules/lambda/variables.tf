variable "lambda_name" {
  description = "Name to be used on lambda function name"
  type        = string
}

variable "security_group_ids" {
  description = "security_group id"
  type        = list(string)
}

variable "subnet_ids" {
  description = "subnet_ids"
  type        = list(string)
}

variable "lambda_image_uri" {
    description = "lambda_image_uri"
    type        = string
    }