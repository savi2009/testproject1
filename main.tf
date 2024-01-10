terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAUSA45AWVOOX6T3GN"
  secret_key = "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"  
}

# Create a instance
resource "aws_instance" "server" {
  ami           = "ami-08e5424edfe926b43"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
     }

}
