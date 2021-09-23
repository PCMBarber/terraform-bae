output "server_private_ip" {
  value = aws_instance.prod_instance.private_ip
}
output "server_public_ip" {
  value = aws_instance.prod_instance.public_ip
}
output "server_id" {
  value = aws_instance.prod_instance.id
}