#Get attributes and Arguments: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#attribute-reference

#Arguments: These are input values you provide to a resource/module in Terraform configuration(Arguments = input values/variable)
#Attributes: These are properties that Terraform reads from a resource, after it's created or planned(Attributes = output values)

# EC2 Instance Public IP
output "Aliana_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.thalia[*].public_ip #Here we use index value for particular output or Asterix(*) list all the defined output.
}

# EC2 Instance Public DNS
output "Aliana_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.thalia[*].public_dns
}

# EC2 Instance ID
output "Aliana_id" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.thalia[*].id
}