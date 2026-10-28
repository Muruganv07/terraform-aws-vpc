output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.aws_vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.aws_vpc.cidr_block
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}
