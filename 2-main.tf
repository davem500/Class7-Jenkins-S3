resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-"
  force_destroy = true


  tags = {
    Name = "Jenkins Bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.frontend.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false

}

resource "aws_s3_bucket_policy" "s3_public_access_policy" {
  bucket = aws_s3_bucket.frontend.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.frontend.arn}/*"
      },
    ]
  })

  depends_on = [aws_s3_bucket_public_access_block.public_access]
}

resource "aws_s3_object" "armageddon_proof_email" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/armageddon_proof_email.png"
  source       = "${path.module}/deliverables/armageddon_proof_email.png"
  content_type = "image/png"
}

resource "aws_s3_object" "armageddon_project_link" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/armageddon_project_link.txt"
  source       = "${path.module}/deliverables/armageddon_project_link.txt"
  content_type = "text/plain"
}

resource "aws_s3_object" "pipeline_deployment" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/pipeline_deployment.png"
  source       = "${path.module}/deliverables/pipeline_deployment.png"
  content_type = "image/png"
}

resource "aws_s3_object" "pipeline_deployment_2" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/pipeline_deployment_2.txt"
  source       = "${path.module}/deliverables/pipeline_deployment_2.txt"
  content_type = "text/plain"
}

resource "aws_s3_object" "webhook_delivery" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/webhook_delivery.png"
  source       = "${path.module}/deliverables/webhook_delivery.png"
  content_type = "image/png"
}

resource "aws_s3_object" "s3_bucket_evidence" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/s3_bucket_evidence.png"
  source       = "${path.module}/deliverables/s3_bucket_evidence.png"
  content_type = "image/png"
}

resource "aws_s3_object" "s3_bucket_evidence_2" {
  bucket       = aws_s3_bucket.frontend.id
  key          = "deliverables/s3_bucket_evidence_2.png"
  source       = "${path.module}/deliverables/s3_bucket_evidence_2.png"
  content_type = "image/png"
}