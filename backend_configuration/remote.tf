resource "aws_s3_bucket" "remote_backend" {
  bucket = "kaizen-app-remote-backend-2024"

  tags = {
    Name = "kaizen-app-remote-backend"
  }
}

resource "aws_dynamodb_table" "remote_dynamodb" {
  name         = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


