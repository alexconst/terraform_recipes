output "ELB address" {
  value = "${aws_elb.web.dns_name}"
}

output "Elasticsearch nodes" {
  value = "${join("\n\t\t\t", aws_instance.web.*.public_dns)}"
}

