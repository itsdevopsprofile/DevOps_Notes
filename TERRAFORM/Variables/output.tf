output "public_ip" {
  value = aws_instance.vm.public_ip
}

output "subnet_id" {
  value = aws_subnet.s1.id
}

output "security_group" {
  value = aws_security_group.firewall.id
}
