provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "Task_3" {
  ami           = "ami-0a606d8395a538502"
  instance_type = "t2.micro"
  key_name = "AWS_KEY_PAIR"
  tags = {
    Name = "Terraform_task"
  }
}