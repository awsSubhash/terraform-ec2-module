terraform {
  backend "s3" {
    bucket         = "terraform-state-subhash"
    key            = "module/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
