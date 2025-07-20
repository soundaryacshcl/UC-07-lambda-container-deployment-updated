module "network" {
  source              = "../../modules/network"
  vpc_cidr_block      = var.vpc_cidr_block
  project_name        = var.project_name
}

module "ecr" {
  source       = "../../modules/ecr"
  repo_name    = var.repo_name
}

module "security_group" {
  source              = "../../modules/security_group"
  project_name        = var.project_name
  vpc_id              = module.network.vpc_id
}

module "lambda" {
  source              = "../../modules/lambda"
  lambda_name         = var.lambda_function_name
  lambda_image_uri    = var.lambda_image_uri
  subnet_ids          = module.network.private_subnet_ids
  security_group_ids  = [module.security_group.lambda_sg_id]
}

module "api_gateway" {
  source          = "../../modules/api_gateway"
  lambda_function_name = module.lambda.lambda_function_name
  lambda_arn     = module.lambda.lambda_arn
}