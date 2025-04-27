output "pub_subnet_id" {
    value = aws_subnet.pub.id
  
}

output "pri_subnet_id" {
    value = aws_subnet.pri.id
}

output "security_group_id" {
    value = aws_security_group.sg.id
  
}
