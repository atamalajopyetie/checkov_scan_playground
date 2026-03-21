resource "aws_s3_bucket" "bad_bucket" {
  bucket = "my-open-bucket-cspm-lab"
}

resource "aws_s3_bucket_acl" "bad_bucket_acl" {
  bucket = aws_s3_bucket.bad_bucket.id
  acl    = "public-read"
}

# Missing: versioning, encryption, public access block