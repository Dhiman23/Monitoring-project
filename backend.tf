terraform {
  backend "s3" {
    bucket = "terra-bucket-23"
    key    = "monitoringProject/terraform.tfstate"
    region = "us-east-1"
  }
}