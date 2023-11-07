module "network" {
  source = "../../modules/network"
  env = var.env
}

module "instance" {
  source = "../../modules/instance"
  ec2_name = "demo-terraform"
  subnet_id = module.network.subnet_id
  env = var.env
}
