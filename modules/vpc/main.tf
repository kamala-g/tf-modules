resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidr_blocks)

  cidr_block = var.subnet_cidr_blocks[count.index]
  vpc_id     = aws_vpc.main.id
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  map_public_ip_on_launch = true
}

data "aws_availability_zones" "available" {}

