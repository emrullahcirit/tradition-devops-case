module "network" {
  source = "./modules/network"
}

module "instances" {
	source = "./modules/instance"

  security_group_id = module.network.security_group
  subnet_ids = module.network.subnet_values
}

module "eks-cluster" {
	source = "./modules/eks"

  vpc_id = module.network.main-vpc
  subnet_ids = module.network.subnet_values
}
