resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
}
resource "aws_instance" "ec2" {
  subnet_id = aws_subnet.my_subnet.id
  ami = "ami-0fdfb4d987b63ae72"
  instance_type = "t3.micro"
}