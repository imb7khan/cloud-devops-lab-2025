terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-imb7" 
    key            = "devops/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks-imb7"  
    encrypt        = true
  }
}
