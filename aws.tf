terraform {
  required_version = "~> 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #  Allow 3.39  version of the AWS provider
      version = "= 3.39"
    }

  }
  backend "s3" {
      encrypt = true
      bucket = "<BUCKET_NAME>"
      dynamodb_table = "<DYNAMO_DB_TABLE_NAME>"
      key = "<PROJECT_NAME>.tfstate"
      region = "eu-west-1"
  }
}

provider "aws" {
  region  = "eu-west-1"
  assume_role {
    role_arn = var.iamrole
  }
}

variable "iamrole" {
  description = "The ARN of the Role for evironment"
  type        = string
}
variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "eu-west-1"
}
