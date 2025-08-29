variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix for resources"
  type        = string
  default     = "devops"
}

variable "public_key_name" {
  description = "SSH key pair name in AWS"
  default     = "Imb7-key"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
     
     default = "ami-08c40ec9ead489470" 
     
}

variable "my_ip_cidr" { 
    
    default = "103.166.103.197/32" 
    
}