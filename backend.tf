terraform {
  backend "s3" {
    bucket = "visnu-bucket"
    key    = "firstfile.tfstate"
    region = "ap-south-1"
    dynamodb_table = "visnu-table1"
  }
}


