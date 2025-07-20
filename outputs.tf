output "lambda_function_url" {
  value = aws_lambda_function_url.this.function_url
}

output "vpc_id" {
  value = aws_vpc.this.id
}
