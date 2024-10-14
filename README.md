# AWS EC2 Server Manager using Terraform 
  This project demonstrates how to create and manage EC2 instances on AWS using Terraform.

  ## Requirements
  - AWS Acccount
  - AWS CLI configured
  - Terraform installed

  ## Setup
  1. Clone the repository.
  2. Create a 'terraform.tfvars' file and fill in your AWS credentials and key pair name :
  '''hcl

  aws_access_key = "your-access-key"
  aws_secret_key = "your-secret-key"
  Key_name = "your-key-pair"
