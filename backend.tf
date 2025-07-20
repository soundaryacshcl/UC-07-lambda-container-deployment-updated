terraform {
  backend "s3" {
    bucket         = "terraform-hcl-usecases"
    key            = "uc-07/lambda-container/terraform.tfstate"
    region         = "ap-south-1"
    encrypt = true
  }
}
