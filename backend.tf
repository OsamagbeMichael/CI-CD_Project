terraform {

    backend "s3" {
        bucket = "myteraformstatew"
        key = "prod/terraform.tfstate"
        region = "ca-central-1"

    }

    
}