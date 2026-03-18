variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "username" {
  type = string
}

variable "public_key" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "allowed_ssh_cidr" {
  type = list(string)
}

variable "allowed_jenkins_cidr" {
  type = list(string)
}
