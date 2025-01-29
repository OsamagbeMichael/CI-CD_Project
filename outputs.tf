output "bucket_arn"{
    description = "The ARN of the S3 bucket"
    value = aws_s3_bucket.ci_cd_bucket.arn 
}

output "project_name"{
    description = "The Arn of the created bucket"
    value = aws_s3_bucket.ci_cd_bucket.arn
}

output "bucket_region"{
    description = "The region of the AWS S3 bucket"
    value = aws_s3_bucket.ci_cd_bucket.region
}