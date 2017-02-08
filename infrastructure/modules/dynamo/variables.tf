
variable "aws_access_key" {
  description = "The AWS access key."
}

variable "aws_secret_key" {
  description = "The AWS secret key."
}

variable "region" {
  description = "The AWS region to create resources in."
  default = "eu-west-1"
}

variable "environment" {
  description = "Name of the environment"
}

variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-9398d3e0"
  }
}

variable "availability_zones" {
  default     = "eu-west-1a,eu-west-1b,eu-west-1c"
  description = "List of availability zones, use AWS CLI to find your "
}


variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}



