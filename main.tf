module "vpc" {
  source = "./vpc.tf"
}

module "iam" {
  source = "./iam.tf"
}

module "lambda" {
  source = "./lambda.tf"
}
