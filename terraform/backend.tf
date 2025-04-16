terraform {
  backend "s3" {
    bucket         = "add-your-bucket-name"
    key            = "simple-time-service/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
