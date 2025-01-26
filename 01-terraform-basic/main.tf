# For more info => https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "example" {
  bucket = "study-tf-bucket-s3"

  tags = {
    Name        = "My Bucket S3"
    CreatedAt   = "2025-01-26"
    Environment = "Dev"
    ManadedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}