terraform {
  backend "s3" {
    bucket = "terraformstate-filebucket"
    key    = "jenkins-server/terraform.tfstate"
    region = "us-east-1"
  }
}
