terraform {
    required_version = "~> 1.8.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "MilindInfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t2.micro"
}
