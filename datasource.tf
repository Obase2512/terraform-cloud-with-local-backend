#Get your resource data source template e.g for ec2 https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
#Get below values: Console->EC2->images(AMIs)->select(public images)-> search(amz)-> select image


data "aws_ami" "guress" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}