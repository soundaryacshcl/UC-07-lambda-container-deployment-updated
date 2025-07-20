resource "aws_ecr_repository" "this" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true
}

resource "aws_lambda_function" "this" {
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_exec.arn
  package_type  = "Image"
  image_uri     = "${aws_ecr_repository.this.repository_url}:${var.image_tag}"
  timeout       = 10

  vpc_config {
    subnet_ids         = [aws_subnet.private_a.id, aws_subnet.private_b.id]
    security_group_ids = [aws_security_group.lambda_sg.id]
  }
}

resource "aws_lambda_function_url" "this" {
  function_name      = aws_lambda_function.this.function_name
  authorization_type = "NONE"
}
