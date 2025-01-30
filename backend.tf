terraform {

  backend "s3" {
    bucket = "myteraformstatew"
    key    = "terraform/state.tfstate"
    region = "ca-central-1"

  }


}