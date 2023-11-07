module "network" {
  source = "./modules/network"
  network_prefix = lookup(var.network_prefix, local.env)
  region = lookup(var.aws_region, local.env)
  env = local.env
}

module "instance" {
  source = "./modules/instance"
  instance_name = "terraform-lab"
  ami = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]
  subnet_id   = module.network.aws_subnet_id
  network_prefix = lookup(var.network_prefix, local.env)
  env = local.env
}