# About

ElasticSearch cluster of 3 nodes behind an AWS ELB.



# Deploying

Make sure your AWS credentials are "readable" (eg: environment variables, or $HOME/.aws/...).  
By default `developer` and `eu-west-1` are used as `key_name` and `aws_region`.

```bash
terraform apply -var 'key_name=YOUR_KEY_NAME' 'aws_region=YOUR_REGION'
```








The example launches a web server, installs nginx, creates an ELB for instance. It also creates security groups for the ELB and EC2 instance. 

To run, configure your AWS provider as described in https://www.terraform.io/docs/providers/aws/index.html

Run this example using:

    terraform apply -var 'key_name=YOUR_KEY_NAME'

Wait a couple of minutes for the EC2 userdata to install nginx, and then type the ELB DNS Name from outputs in your browser and see the nginx welcome page
