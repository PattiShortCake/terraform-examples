variable "bucket_name" {
  description = "The name of the bucket to create"
  type        = string
}

variable "sse_kms_key_id" {
  description = "Amazon Web Services Key Management Service (KMS) customer Amazon Web Services KMS key ID to use for the default encryption"
  type        = string
}

variable "logging_destination_bucket" {
  description = "The name of the bucket for which to set the logging parameters"
  type        = string
}

variable "logging_destination_key_prefix" {
  description = "A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket."
  type        = string
}

variable "inventory_bucket_arn" {
  description = "The name of the bucket where the inventory configuration will be stored"
  type        = string
}

variable "inventory_kms_key_arn" {
  description = "Specifies the use of SSE-KMS to encrypt delivered inventory reports"
  type        = string
}