terraform {
  backend "s3" {
    bucket         = "bucket name"
    key            = "Devops-practice/terraform.tfstate"
    region         = "region name"
    encrypt        = true
    dynamodb_table = "terraform-workspaces-lock"  # create dynamodb table 
  }
}