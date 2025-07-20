
resource "aws_ecr_repository" "this" {
  name = var.repo_name
}

output "repository_url" {
  value = aws_ecr_repository.this.repository_url
}