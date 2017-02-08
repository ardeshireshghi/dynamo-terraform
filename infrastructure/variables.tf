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

variable "availability_zones" {
  description = "The availability zones"
  default = "eu-west-1a,eu-west-1b,eu-west-1c"
}

/* ECS optimized AMIs per region */
variable "amis" {
  default = {
    ap-northeast-1 = "ami-8aa61c8a"
    ap-southeast-2 = "ami-5ddc9f67"
    eu-west-1      = "ami-a1491ad2"
    us-east-1      = "ami-b540eade"
    us-west-1      = "ami-5721df13"
    us-west-2      = "ami-cb584dfb"
  }
}


variable "environment" {
    description = "Name of the environment"
    default  =  "local"
}
