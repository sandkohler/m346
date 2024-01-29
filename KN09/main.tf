terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t2.medium"
  key_name               = "Sandro-1"
  user_data              = file("C:/020.Berufsschule/m346/KN09/cloud-init-db.yaml")
  vpc_security_group_ids = ["sg-00d2c50f3e7ad5378"]

  tags = {
    Name = "Terraform-KN09"
  }
}
