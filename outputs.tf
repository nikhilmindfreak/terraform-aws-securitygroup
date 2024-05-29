## we give outputs so module user will catch it with data source 

output "sg_id" {
    value = aws_security_group.allow_tls
}