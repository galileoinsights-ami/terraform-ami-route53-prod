# Backend Initialization using command line

terraform {
 backend "s3" {
   key = "route53-prod.tfstate"
 }
}

locals {

}

# Initializing the provider

# Following properties need to be set for this to work
# export AWS_ACCESS_KEY_ID="anaccesskey"
# export AWS_SECRET_ACCESS_KEY="asecretkey"
# export AWS_DEFAULT_REGION="us-west-2"
# terraform plan
provider "aws" {}


data "aws_route53_zone" "main_domain" {
  name = "amiinnovations.com."
}


# Delegating to the Dev Name Servers
resource "aws_route53_record" "dev_record" {
  zone_id = "${data.aws_route53_zone.main_domain.zone_id}"
  name    = "dev"
  type    = "NS"
  
  records = "${var.dev_domain_ns_records}"
  
  ttl = 300
}