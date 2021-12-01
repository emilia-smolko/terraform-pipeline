resource "aws_vpc" "vpc-10-2" {
  assign_generated_ipv6_cidr_block = false
  cidr_block                       = "10.2.0.0/16"
  enable_dns_hostnames             = false
  enable_dns_support               = true
  instance_tenancy                 = "default"
  tags = {
    "Name" = "vpc-10-2"
  }
}
