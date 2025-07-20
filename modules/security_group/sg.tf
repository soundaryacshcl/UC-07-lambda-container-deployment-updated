resource "aws_security_group" "lambda_sg" {
  name        = "lambda_sg"
  description = "Allow HTTPS egress"
  vpc_id      =  var.vpc_id

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}lambda-sg"
  }
}

output "lambda_sg_id" {
  value = aws_security_group.lambda_sg.id
}