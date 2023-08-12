variable "aws_region" {
  type    = string
  default = "eu-north-1"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "variable_sub_cidr" {
  description = "CIDR Block for Variables Subnet"
  type        = string
  default     = "10.0.202.0/24"
}

variable "variable_sub_az" {
  description = "Availability Zode used Variable Subnet"
  type        = string
  default     = "eu-north-1"
}

variable "variable_sub_auto_ip" {
  description = "Set Automatic IP Assigment for Variables Subnet"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment for Deployment"
  type        = string
  default     = "dev"
}