resource "aws_instance" "prod_instance" {
  ami                  = "ami-0194c3e07668a7e36"
  instance_type        = "t2.medium"
  availability_zone    = "eu-west-2a"
  key_name             = "terraform-resources"
  user_data            = "${file("install.sh")}"

  network_interface {
    device_index         = 0
    network_interface_id = var.net_id
  }
}