terraform {
  required_providers {
      aws = {
            source = "hashicorp/aws"
            version = "~>3.27"
            }
    }
#       required_version = "~>= 1.0.0"
}

provider "aws" {
    profile = "terraform"
    region = "us-east-2"
}

resource "aws_instance" "mysql" {
    ami = "ami-02f4b9df9aed557dd"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0a081a6884e21b760"]
    subnet_id              = "subnet-7487361f"

    tags = {
    Name = "MySQL"
    }
}
resource "aws_instance" "tomcat" {
    ami = "ami-02f4b9df9aed557dd"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0a081a6884e21b760"]
    subnet_id              = "subnet-7487361f"

    tags = {
    Name = "Tomcat"
    }
}
