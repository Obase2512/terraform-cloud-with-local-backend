#resource block
resource "aws_instance" "thalia" {
  ami = data.aws_ami.guress.id
  instance_type = var.instance_type
  key_name = var.key_pair  #keypair is region specific
  count = 3

  tags = {
    "Name" = "Aliana-${count.index}"
  }
}
