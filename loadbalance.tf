resource "aws_lb" "my_lb" {
  internal = false
  load_balancer_type = "application"
  subnets = [aws_subnet.pvt-1.id,  aws_subnet.public-3.id]

}
resource "aws_lb_target_group" "my-tg" {
  name = "mytg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc1.id
}
