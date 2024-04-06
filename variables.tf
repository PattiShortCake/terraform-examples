variable "region" {
  description = "Region where to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  default = {
    dev = "dev"
  }
}

variable "s3_bucket" {
  default = {
    dev = "patti-tf-test-bucket"
  }
}

variable "s3_sse_kms_key_id" {
  default = {
    dev = "2b914d91-0bea-496e-a870-22163b465f3f"
  }
}

variable "s3_logging_destination_bucket" {
  default = {
    dev = "patti-server-logging"
  }
}

variable "s3_logging_destination_key_prefix" {
  default = {
    dev = "log/"
  }
}

variable "s3_inventory_bucket_arn" {
  default = {
    dev = "arn:aws:s3:::patti-tf-test-bucket"
  }
}

variable "s3_inventory_kms_key_arn" {
  description = "Specifies the use of SSE-KMS to encrypt delivered inventory reports"
  type        = string
}