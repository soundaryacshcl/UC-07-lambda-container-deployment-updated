terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket = "terraform-hcl-usecases"
    key    = "usecase7/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}
