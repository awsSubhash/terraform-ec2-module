ami_id        = "ami-02dfbd4ff395f2a1b"
instance_type = "c7i-flex.large"
key_name      = "subhash-key"

username   = "subhash"
public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICrjFOXEHv8XayVTBqgkHog2gt+TqXOwy5culmTK68Oa SYNAMEDIA+skumarsingh@LTskumars-0DB88"

instance_name = "ec2-server"
instance_count = 6

allowed_ssh_cidr     = ["0.0.0.0/0"]
allowed_jenkins_cidr = ["0.0.0.0/0"]
