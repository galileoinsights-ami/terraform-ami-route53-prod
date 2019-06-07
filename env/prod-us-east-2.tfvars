# default AWS Tags
default_aws_tags = {
  Terraform = "true"
  Environment = "prod"
}

# has to be obtained after created the dev zone in the dev AWS account
dev_domain_ns_records = [
    "ns-1190.awsdns-20.org",
    "ns-1802.awsdns-33.co.uk",
    "ns-191.awsdns-23.com",
    "ns-974.awsdns-57.net"
    ]