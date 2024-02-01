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
  region = "us-west-2"
}

resource "aws_s3_bucket" "mt4-maxime" {
  bucket = "mt4-maxime"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_lightsail_instance" "my_lightsail_instance" {
  name              = "mt4-maxime"
  availability_zone = "us-west-2a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_2_0"

  tags = {
    Name        = "Lightsail Instance"
    Environment = "Dev"
  }
}
