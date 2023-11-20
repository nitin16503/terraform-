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
#1 creating EC2
resource "aws_instance" "nitin_server" {
  ami           = var.AMI_id
  instance_type = var.instance_type

  tags = {
    Name = "Nitin_Mehta"
  }
}

provider "aws" {
  region = "us-east-1"  # Specify your desired AWS region
}

#2 creating S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "Nitin_bucket"  # Replace with your desired bucket name
  acl    = "private"  # Access control for the bucket, e.g., "private", "public-read", "public-read-write"

  tags = {
    Name        = "MyS3Bucket"
    Environment = ""   # Dev, Prodcution  etc.
  }
}

