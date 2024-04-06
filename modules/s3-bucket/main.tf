resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_bucket_sse_config" {
  bucket = aws_s3_bucket.s3_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.sse_kms_key_id
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_logging" "s3_bucket_logging" {
  bucket        = aws_s3_bucket.s3_bucket.id
  target_bucket = var.logging_destination_bucket
  target_prefix = var.logging_destination_key_prefix
}

resource "aws_s3_bucket_inventory" "this_bucket_inventory" {
  bucket = aws_s3_bucket.s3_bucket.id
  name   = "${aws_s3_bucket.s3_bucket.id}_inventory"

  included_object_versions = "Current"

  schedule {
    frequency = "Daily"
  }

  destination {
    bucket {
      format     = "CSV"
      bucket_arn = var.inventory_bucket_arn
      prefix     = "inventory"
      encryption {
        sse_kms {
          key_id = var.inventory_kms_key_arn
        }
      }
    }
  }

  optional_fields = [
    "Size",
    "LastModifiedDate",
    "StorageClass",
    "ETag",
    "IsMultipartUploaded",
    "ReplicationStatus",
    "EncryptionStatus",
    "ObjectLockRetainUntilDate",
    "ObjectLockMode",
    "ObjectLockLegalHoldStatus",
    "IntelligentTieringAccessTier",
    "BucketKeyStatus",
    "ChecksumAlgorithm",
    "ObjectAccessControlList",
    "ObjectOwner"
  ]
}