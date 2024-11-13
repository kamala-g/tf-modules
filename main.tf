module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr_block     = var.vpc_cidr_block
  subnet_cidr_blocks = var.subnet_cidr_blocks
}

module "mq_broker" {
  source             = "./modules/mq-broker"
  engine_version     = var.engine_version
  engine_type        = var.engine_type
  broker_name        = var.mq_broker_name
  host_instance_type = var.host_instance_type
  subnet_ids         = ["subnet-0af1e0663885d426c"]
  username           = var.username
  password           = var.password

}

