output "main_hosted_zone_id" {
  value = "${data.aws_route53_zone.main_domain.zone_id}"
}

output "main_delegation_set_nameservers" {
  value = "${data.aws_route53_zone.main_domain.name_servers}"
}