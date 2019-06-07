variable "default_aws_tags" {
  description = "default aws tags"
  default = {}
}

variable "backend_s3_bucket_name" {
  description = "S3 bucket which contains remote state"
}

variable "dev_domain_ns_records" {
  description = "Dev Domains Name Server List"
  type = "list"
}