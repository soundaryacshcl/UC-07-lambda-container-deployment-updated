module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source             = "./modules/lambda"
  image_tag          = var.image_tag
  lambda_function_name = var.lambda_function_name
  ecr_repo_name      = var.ecr_repo_name
  lambda_role_arn    = module.iam.lambda_role_arn
  subnet_ids         = [module.vpc.private_a_id, module.vpc.private_b_id]
  security_group_ids = [module.vpc.lambda_sg_id]
}
