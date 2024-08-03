module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Niteesh-vpc"
  cidr = "172.20.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["172.20.3.0/24", "172.20.4.0/24"]
  public_subnets  = ["172.20.1.0/24", "172.20.2.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Message     = "Hi"
  }
}