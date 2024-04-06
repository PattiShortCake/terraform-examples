module "patti_s3_bucket" {
  source = "./modules/s3-bucket"

  bucket_name                    = var.s3_bucket[terraform.workspace]
  inventory_bucket_arn           = var.s3_inventory_bucket_arn[terraform.workspace]
  inventory_kms_key_arn          = var.s3_inventory_kms_key_arn
  logging_destination_bucket     = var.s3_logging_destination_bucket[terraform.workspace]
  logging_destination_key_prefix = var.s3_logging_destination_key_prefix[terraform.workspace]
  sse_kms_key_id                 = var.s3_sse_kms_key_id[terraform.workspace]
}

module "patti_s3_bucket_2" {
  source = "./modules/s3-bucket"

  bucket_name                    = "${var.s3_bucket[terraform.workspace]}-2"
  inventory_bucket_arn           = var.s3_inventory_bucket_arn[terraform.workspace]
  inventory_kms_key_arn          = var.s3_inventory_kms_key_arn
  logging_destination_bucket     = var.s3_logging_destination_bucket[terraform.workspace]
  logging_destination_key_prefix = var.s3_logging_destination_key_prefix[terraform.workspace]
  sse_kms_key_id                 = var.s3_sse_kms_key_id[terraform.workspace]
}

module "patti_s3_bucket_3" {
  source = "./modules/s3-bucket"

  bucket_name                    = "${var.s3_bucket[terraform.workspace]}-3"
  inventory_bucket_arn           = var.s3_inventory_bucket_arn[terraform.workspace]
  inventory_kms_key_arn          = var.s3_inventory_kms_key_arn
  logging_destination_bucket     = var.s3_logging_destination_bucket[terraform.workspace]
  logging_destination_key_prefix = var.s3_logging_destination_key_prefix[terraform.workspace]
  sse_kms_key_id                 = var.s3_sse_kms_key_id[terraform.workspace]
}

