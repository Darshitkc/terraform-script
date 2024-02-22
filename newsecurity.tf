resource "aws_security_group" "vansi2" {
  name = "vansi2"
  description = "Allow inbound traffic"
  vpc_id = aws_vpc.vpc1.id

  ingress{
    description = "allow inbound from application layer"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
    from_port = 32768
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "vansi2"
  }
}
