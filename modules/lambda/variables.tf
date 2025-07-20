variable "lambda_function_name" {}
variable "lambda_role_arn" {}
variable "ecr_repo_name" {}
variable "image_tag" {}
variable "subnet_ids" {
  type = list(string)
}
variable "security_group_ids" {
  type = list(string)
}