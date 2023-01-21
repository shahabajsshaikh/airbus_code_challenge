resource "aws_instance" "compute" {
  count         = 2
  ami           = "**************************"
  instance_type = "t2.micro"
  key_pair = "key_name"
  tags = {
    Name = "airbus"
  }
}