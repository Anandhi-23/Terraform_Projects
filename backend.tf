terraform {
  backend "s3" {
    bucket         = "kaizen-app-remote-backend-2024"
    key            = "app/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}