# import {
#   id = var.kms-key-id[terraform.workspace]
#   to = aws_kms_key.this_key
# }
#
# resource "aws_kms_key" "this_key" {
#   # (resource arguments)
#   lifecycle {
#     prevent_destroy = true
#   }
# }
#
# import {
#   id = var.s3-logging-bucket[terraform.workspace]
#   to = aws_s3_bucket.logging_bucket
# }
#
# resource "aws_s3_bucket" "logging_bucket" {
#   # (resource arguments)
#   lifecycle {
#     prevent_destroy = true
#   }
# }
