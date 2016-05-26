output "address" {
  value = "${aws_elb.web.dns_name}"
  # aws_instance.web.public_dns
}
