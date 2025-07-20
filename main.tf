module "vpc" {
  source = "./"
}

module "iam" {
  source = "./"
}

module "lambda" {
  source = "./"
}
