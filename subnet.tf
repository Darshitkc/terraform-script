resource "aws_subnet" "pvt-1" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  cidr_block = "10.0.128.0/18"

  tags = {
    name = "pvt-1"
  }

}
resource "aws_subnet" "pvt-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  cidr_block = "10.0.192.0/21"

  tags = {
    name = "pvt-2"
  }

}
