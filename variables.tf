variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "key_name" {
  type        = string
  description = "EC2 Key Pair"
}

variable "username" {
  type        = string
  description = "Linux username"
}

variable "public_key" {
  type        = string
  description = "SSH public key"
}

variable "instance_name" {
  type        = string
  description = "EC2 Name"
}

variable "allowed_ssh_cidr" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_jenkins_cidr" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
