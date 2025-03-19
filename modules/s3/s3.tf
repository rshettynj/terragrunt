module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.6.0"

  bucket = var.bucket_name

  tags = {
    owner   = var.tag_owner
    purpose = var.tag_purpose
    details = var.tag_details
}
}

output "s3_buckets_arns" {
  value = [module.s3-bucket.*.s3_bucket_arn]
}

output "s3_buckets_regions" {
  value = distinct(flatten(concat([module.s3-bucket.*.s3_bucket_region])))
}

output "s3_buckets_arns_and_regions" {
  value = distinct(flatten(concat([module.s3-bucket.*.s3_bucket_arn], [module.s3-bucket.*.s3_bucket_region])))
}
