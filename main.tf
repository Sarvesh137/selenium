provider "aws" {
  # for historical note
  #version = "1.41"
  region  = "us-east-1"
}

resource "aws_security_group" "my_security_group" {
  name        = var.security_group
  description = "security group for Ec2 instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 4444
    to_port     = 4444
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 4442
    to_port     = 4443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags= {
    Name = var.tag_name
  }
}



resource "aws_instance" "Selenium_Docker" {
  ami = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
//  security_groups= [ "security_jenkins_port"]
  network_interface {
     network_interface_id = var.eni_id
     device_index = 0
  tags= {
    Name = var.tag_name
  }
}
/*
resource "aws_network_interface_attachment" "Docker" {
  instance_id          = aws_instance.Docker.id
  network_interface_id = var.eni_id
  device_index         = 0
}
*/

/*
# Create Elastic IP address
resource "aws_eip" "Docker" {
  vpc      = true
  instance = aws_instance.Docker.id
tags= {
    Name = "jenkins_elstic_ip"
  }
}

*/
