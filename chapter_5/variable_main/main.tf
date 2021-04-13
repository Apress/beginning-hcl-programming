terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "hclbookvpc" {
  cidr_block = var.ip_range
}

