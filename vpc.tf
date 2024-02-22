resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.128.0/17"
  instance_tenancy = "default"

  tags = {
    Name = "Vpc1"
  }

}
