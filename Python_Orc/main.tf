module "VPC_Service" {
  source = "./VPC_Service"
  vpc_id = module.network-resources.vpc_id
}

module "Security_Service" {
  source = "./Security-Service"
  vpc_id = module.network-resources.vpc_id
}

module "EC2_Service" {
  source = "./EC2_Service"

  vpc_id = module.VPC_Service.vpc_id
  security_group_id = module.Security_Service.security_group_id
  public_subnet_id = module.EC2_Service.public_subnet_id

}