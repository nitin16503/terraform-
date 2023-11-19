# output.tf


output "pubic_ip" {
  value = aws_instance.nitin_server.public_ip
}

output "private_ip"{
 value = aws_instance.nitin_server.private_ip
}
