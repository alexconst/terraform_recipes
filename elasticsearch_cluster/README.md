# About

Elasticsearch cluster behind an AWS ELB.

- 3 Elasticsearch nodes
- AWS ELB with stickiness enabled, but the expiration is set to 10s as to allow checking the ELB in action
- creates security groups for the Elasticsearch nodes (opens port 22 and 9200) and the AWS ELB (opens port 9200)
- for demonstration purposes the ES instances are set to `t2.micro`, but on a real scenario these could be adjusted to better fit the problem at hand (eg: logging, searching, amount of data).


# Deploying

Make sure your AWS credentials are "readable" (eg: environment variables, or $HOME/.aws/...).  
By default `developer` and `eu-west-1` are used as `key_name` and `aws_region`.

```bash
terraform apply -var 'key_name=YOUR_KEY_NAME' 'aws_region=YOUR_REGION'
```

Wait a couple of minutes and then to access it:
```bash
elb_dns=$(jq '."modules"[].outputs["ELB address"]' terraform.tfstate | sed 's/"//g')
firefox $elb_dns:9200
```


# TODO

- provision with Ansible, with support from one of these helper tools: [terraform-inventory](https://github.com/adammck/terraform-inventory), [terraform.py](https://github.com/CiscoCloud/terraform.py).


