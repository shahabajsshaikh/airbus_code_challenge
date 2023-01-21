resource "aws_instance" "compute" {
  count         = 2
  ami           = "amzn2-ami-kernel-5.10-hvm-2.0.20221210.1-x86_64-gp2"
  instance_type = "t2.micro"
  tags = {
    Name = "airbus"
  }
}