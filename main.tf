terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

# version of terraform it can be less than or greater than

  required_version =  "1.6.3"
}

#additional details about cloud provider
provider "aws" {
  region = "ap-south-1"
}

#work to do 
resource "aws_instance" "nitin_server" {
  ami           = var.AMI_id
  instance_type = var.instance_type

  tags = {
    Name = "Nitin_Mehta"
  }
}

