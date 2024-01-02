resource "aws_instance" "example_instance" {
  ami           = "ami-0a2e7efb4257c0907" # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
  user_data     = file("${path.module}/authentication.sh")

  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  subnet_id                   = aws_subnet.ec2_security_subnet.id

  tags = {
    Name = "ec2_securty"
  }
}
