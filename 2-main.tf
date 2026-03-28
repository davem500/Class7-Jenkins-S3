resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-"
  force_destroy = true


  tags = {
    Name = "Jenkins Bucket"
  }
}

resource "aws_s3_object" "picture" {
  bucket = aws_s3_bucket.frontend.id
  key    = "armageddon_evidence/arm_proof_image.png"
  source = "${path.module}/armageddon_evidence/arm_proof_image.png"
}

resource "aws_s3_object" "text" {
  bucket = aws_s3_bucket.frontend.id
  key    = "armageddon_evidence/rmageddon_project_link.txt"
  source = "${path.module}/armageddon_evidence/armageddon_project_link.txt"
}

