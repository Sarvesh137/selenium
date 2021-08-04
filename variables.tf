variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "Selenium"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "my-jenkins-security-group"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}

variable "subnet_id" {
  description = "Name of the subnet"
  default     = "subnet-0db199493ea16fc08"
}

variable "ami_id" {
  description = "AMI for Docker Ec2 instance"
  default     = "ami-0f8f3e38c86610f2c"
}
