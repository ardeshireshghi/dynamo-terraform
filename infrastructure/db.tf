module "dynamo" {
  source = "./modules/dynamo"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
  environment="${var.environment}"
}
