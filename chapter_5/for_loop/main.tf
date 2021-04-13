terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

variable "vpc_id" {
  description = "ID for the AWS VPC where a security group is to be created."
}

variable "subnet_numbers" {
  description = "List of 8-bit numbers of subnets of base_cidr_block that should be granted access."
  default = [1, 2, 3]
}

data "aws_vpc" "hclbook" {
  id = var.vpc_id
}

resource "aws_security_group" "hclbook_example" {
  name        = "hclsubnet"
  vpc_id      = var.vpc_id

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = -1

    cidr_blocks = [
      for num in var.subnet_numbers:
      cidrsubnet(data.aws_vpc.hclbook.cidr_block, 8, num)
    ]
  }
}