terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#config provider
provider "aws" {
  region     = var.region
  access_key = ""
  secret_key = ""
}

module "ebs" {
  source   = "../modules/ebs"
  region   = "${var.region}a"
  ebs_size = var.ebs_size
  projname = var.projname
}

module "eip" {
  source = "../modules/eip"
}

module "secu_grp" {
  source           = "../modules/secu"
  projname         = "${var.projname}-sg"
  sg_ports_ingress = var.sg_ports_ingress
  sg_ports_egress  = var.sg_ports_egress
}

module "ec2" {
  source        = "../modules/ec2"
  instance_type = var.instance_type
  instance_name = var.projname
  volume_id     = module.ebs.ebs_id
  eip_id        = module.eip.id
}


