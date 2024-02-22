resource "aws_db_subnet_group" "rds-2" {
  name = "rds_1"
  subnet_ids = [aws_subnet.pvt-1.id, aws_subnet.public-3.id]

  tags = {
    name = "rds-1"
  }

}
