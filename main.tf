module "ec2" {
  source = "./modules/ec2"

  count = var.instance_count   

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  username   = var.username
  public_key = var.public_key

  instance_name = "${var.instance_name}-${count.index}"  # 👈 unique name

  allowed_ssh_cidr     = var.allowed_ssh_cidr
  allowed_jenkins_cidr = var.allowed_jenkins_cidr
}
