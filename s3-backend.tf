terraform {
  backend "s3" {
    bucket = "terra-backend-s3"
    key    = "dbr-terra-ws"
    region = "us-east-2"
  }
}
