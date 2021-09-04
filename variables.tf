variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "Docker_key"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group_id" {
  description = "Name of security group"
//  default     = "my-jenkins-security-group"
  default     = "sg-0862d6d0f3031ba8b"
}

variable "security_group" {
  description = "Name of security group"
  default     = "my-jenkins-security-group"

}

variable "subnet_id" {
  description = "Name of the subnet"
  default     = "subnet-71022717"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "Selenium_Docker"
}

variable "eni_id" {
  description = "Tag this eni to new ec2"
  default = "eni-078f8c5be52e427fe"
}

//
//variable "public" {
//  description = "Tag this eni to new ec2"
//  default = "54.198.89.91"
//}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
//  default     = "ami-0f8f3e38c86610f2c"
  default = "ami-0f8f3e38c86610f2c"
}
