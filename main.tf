# -----------------------------
# IAM Users
# -----------------------------
resource "aws_iam_user" "developers" {
  for_each = toset(["developer1", "developer2", "developer3"])

  name = each.value

  tags = {
    Environment = "Development"
    Owner       = "Egwu"
  }
}

# -----------------------------
# S3 Bucket
# -----------------------------
resource "aws_s3_bucket" "main" {
  bucket = "minicvictor-terraform-aws-basics"

  tags = {
    Environment = "Development"
    Owner       = "Egwu"
  }
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id

  versioning_configuration {
    status = "Enabled"
  }
}
