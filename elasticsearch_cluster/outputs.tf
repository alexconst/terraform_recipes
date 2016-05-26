output "ELB address" {
  value = "${aws_elb.web.dns_name}"
}

output "Elasticsearch nodes" {
  value = "${join(",", aws_instance.web.*.public_dns)}"
}

