resource "aws_instance" "vm01" {
  ami           = data.aws_ami.ubuntu.id  
  instance_type = "t2.micro"
  availability_zone = "us-east-1d"
  tags = {
    name = var.serverName
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    #values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]

  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}