resource "aws_instance" "mypipe" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"

  tags = {
    Name = "sample"
  }
}
