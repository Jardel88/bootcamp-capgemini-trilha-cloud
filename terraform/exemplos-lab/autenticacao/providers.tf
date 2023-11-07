
/*
provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}
*/

provider "aws" {
  region = "us-east-1"
  assume_role {
	role_arn     = ""
	session_name = ""
  }
}
