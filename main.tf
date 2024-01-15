resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t3.small"

  tags = {
    Name = var.vm_name
    Terraform = true
  }
}