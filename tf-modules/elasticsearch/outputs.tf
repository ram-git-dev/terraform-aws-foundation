output "elb_dns" {
  value = "${aws_elb.coordinators-elb.dns_name}"
}

output "elb_r53_id" {
  value = "${aws_elb.coordinators-elb.zone_id}"
}

