resource "aws_instance" "terraform-ec2" {
  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  key_name = myself.key
  security_groups = web_sg
  tags = {
    Env = "Dev"
  }
}