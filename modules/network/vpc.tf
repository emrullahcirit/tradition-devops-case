module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 4.0"

  name = var.vpc_name
  cidr = var.vpc_cidr
  azs = var.azs
  public_subnets  = var.public_subnets
	map_public_ip_on_launch = true
}