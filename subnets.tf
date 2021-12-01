resource "aws_subnet" "myprivsubnet" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-west-1a"
  cidr_block                      = "10.2.4.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "Private subnet 10.2"
  }
  vpc_id = aws_vpc.vpc-10-2.id

  timeouts {}
}

resource "aws_subnet" "mypubsubnet" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-west-1a"
  cidr_block                      = "10.2.1.0/24"
  map_public_ip_on_launch         = false
  tags = {
    "Name" = "Public subnet 10.2"
  }
  vpc_id = aws_vpc.vpc-10-2.id

  timeouts {}
}
