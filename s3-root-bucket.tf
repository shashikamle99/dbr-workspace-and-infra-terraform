resource "databricks_mws_storage_configurations" "this" {
  provider                   = databricks.mws
  account_id                 = local.databricks_account_id
  bucket_name                = aws_s3_bucket.root_storage_bucket.bucket
  storage_configuration_name = "${local.prefix}-storage"
}