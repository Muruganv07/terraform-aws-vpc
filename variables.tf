variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string

  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "The VPC CIDR must be a valid IPv4 CIDR block."
  }
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "qa"], var.environment)
    error_message = "Environment must be dev or qa."
  }
}
