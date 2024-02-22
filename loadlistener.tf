resource "aws_lb_listener" "my_lis" {
  load_balancer_arn = aws_lb.my_lb.arn
  port = "80"
  protocol = "HTTP"
  default_action {
    target_group_arn = "${aws_lb_target_group.my-tg.id}"
    type = "forward"
  }
}

