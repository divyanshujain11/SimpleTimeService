terraform {
  backend "s3" {
    bucket         = "simple-time-service"
    key            = "simple-time-service/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
