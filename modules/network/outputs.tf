output "security_group" {
  value = aws_security_group.devops-case-sg.id
}

output "main-vpc" {
  value = module.vpc.vpc_id
}

output "subnet_values" {
  value = module.vpc.public_subnets
}
