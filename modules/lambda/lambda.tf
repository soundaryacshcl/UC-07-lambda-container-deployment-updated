resource "aws_lambda_function" "this" {
  function_name = var.lambda_name
  role          = aws_iam_role.lambda_exec.arn
  package_type  = "Image"
  image_uri     = var.lambda_image_uri
  timeout       = 10
  memory_size   = 128
  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }
  depends_on = [aws_iam_role.lambda_exec]
}

output "lambda_function_name" {
  value = aws_lambda_function.this.function_name
}

output "lambda_arn" {
  description = "Lambda function ARN"
  value       = aws_lambda_function.this.arn
}