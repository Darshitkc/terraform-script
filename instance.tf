resource "aws_instance" "terraform2" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  key_name = "kubernetes"
  vpc_security_group_ids = [aws_security_group.vansi.id]
  subnet_id = aws_subnet.public-3.id
  associate_public_ip_address = true
  user_data = "${file("userdata.sh")}"
  tags = {
    name = "terraform2"
  }
}
resource "aws_instance" "terraform3" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  key_name = "kubernetes"
  vpc_security_group_ids = [aws_security_group.vansi.id]
  subnet_id = aws_subnet.public-3.id
  associate_public_ip_address = true
  user_data = "${file("userdata.sh")}"
  tags = {
    name = "terraform3"
  }
}
