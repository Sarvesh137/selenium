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
//  default     = "my-jenkins-security-group"
  default     = "jenkins"
}

variable "subnet_id" {
  description = "Name of the subnet"
  default     = "subnet-0176f5acecec34cc3"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "my-ec2-instance"
}

variable "eni_id" {
  description = "Tag this eni to new ec2"
  default = "eni-0fbec94da39671148"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
//  default     = "ami-0f8f3e38c86610f2c"
  default = "ami-0e233e7c76d115c7f"
}
