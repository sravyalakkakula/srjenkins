resource "aws_instance" "myweb" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"

  tags = {
    Name = "sample"
  }
}