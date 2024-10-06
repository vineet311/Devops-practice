resource "aws_instance" "wordpress" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI ID
  instance_type = "t3.micro"
  associate_public_ip_address = true
  subnet_id     = aws_subnet.wordpress_subnet.id
  security_groups = [aws_security_group.wordpress_sg.name]
  user_data = filebase64("${path.module}/user-data.sh")
  tags = {
    Name = "WordPress"
  }
}
