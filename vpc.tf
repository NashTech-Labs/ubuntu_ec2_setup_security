resource "aws_vpc" "ec2_security_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ec2_vpc"
  }
}
resource "aws_subnet" "ec2_security_subnet" {
  vpc_id     = aws_vpc.ec2_security_vpc.id
  cidr_block = "10.0.1.0/24"
   availability_zone = "ca-central-1a"

  tags = {
    Name = "ec2_Subnet"
  }
 
}
resource "aws_internet_gateway" "ec2_security_gw" {
  vpc_id = aws_vpc.ec2_security_vpc.id

  tags = {
    Name = "main"
  }
}