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

resource "aws_s3_object" "pipeline_deployment" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/pipeline_deployment.png"
  source = "${path.module}/deliverables/pipeline_deployment.png"
}

resource "aws_s3_object" "pipeline_deployment_2" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/pipeline_deployment_2.png"
  source = "${path.module}/deliverables/pipeline_deployment_2.png"
}

resource "aws_s3_object" "web_hook_delivery" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/web_hook_delivery.png"
  source = "${path.module}/deliverables/web_hook_delivery.png"
}

resource "aws_s3_object" "s3_bucket_evidence" {
  bucket = aws_s3_bucket.frontend.id
  key    = "deliverables/s3_bucket_evidence.png"
  source = "${path.module}/deliverables/s3_bucket_evidence.png"
}