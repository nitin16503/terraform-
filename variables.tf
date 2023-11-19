# variables.tf

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

variable "AMI_id" {
  description = "AMI id of EC2 instance "
  default = "ami-0d79e49f91a83a278"
}

