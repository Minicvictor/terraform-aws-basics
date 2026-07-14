output "iam_user_names" {
  description = "Names of the IAM users created"
  value       = [for user in aws_iam_user.developers : user.name]
}

output "iam_user_arns" {
  description = "ARNs of the IAM users created"
  value       = [for user in aws_iam_user.developers : user.arn]
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket created"
  value       = aws_s3_bucket.main.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket created"
  value       = aws_s3_bucket.main.arn
}
