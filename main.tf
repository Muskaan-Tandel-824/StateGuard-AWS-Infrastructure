provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "muskan-terraform-state-bucket"   
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

resource "aws_instance" "My-Ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
