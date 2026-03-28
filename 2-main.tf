resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-"
  force_destroy = true


  tags = {
    Name = "Jenkins Bucket"
  }
}

resource "aws_s3_object" "arm_proof_image" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/arm_proof_image.png"
  source = "${path.module}/deliverables/arm_proof_image.png"
}

resource "aws_s3_object" "armageddon_project_link" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/armageddon_project_link.txt"
  source = "${path.module}/deliverables/armageddon_project_link.txt"
}

resource "aws_s3_object" "pipeline-deployment" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/pipeline-deployment.png"
  source = "${path.module}/deliverables/pipeline-deployment.png"
}

resource "aws_s3_object" "web-hook-delivery" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/arm_proof_image.png"
  source = "${path.module}/deliverables/web-hook-delivery.png"
}