output "vpc_id" {
    value = aws_vpc.vnet.id 
}

output "subnet_id" {
  value = aws_subnet.pub.id 
}


output "aws_security_group" {
  value = aws_security_group.sg.id 
}

output "public_ip" {
  value = aws_instance.ec2.public_ip
}
