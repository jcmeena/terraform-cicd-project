

resource "aws_s3_bucket" "cicd_test_bucket" {
  bucket_prefix = "tf-cicd-mastery-bucket-" # Generates a random safe suffix automatically
  force_destroy = true
}
