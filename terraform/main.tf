provider "aws" {
  region = "us-east-1"
}

module "aws_humangov_intraestructure" {
  source     = "./modules/aws_humangov_infraestructure"
  for_each   = toset(var.states)
  state_name = each.value

}