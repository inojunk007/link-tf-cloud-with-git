terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = "AKIATXPWWR3CXPDFUPFI"
    secret_key = "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" 
}