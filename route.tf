resource "aws_route_table" "ec2_security_route_table" {
  vpc_id = aws_vpc.ec2_security_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ec2_security_gw.id

  }


  tags = {
    Name = "ec2_route_table"
  }
}
resource "aws_route_table_association" "ec2_security_route_table_association" {
  subnet_id      = aws_subnet.ec2_security_subnet.id
  route_table_id = aws_route_table.ec2_security_route_table.id
}