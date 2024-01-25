variable "ami_id" {
  type = string
  default = "ami-0076451230a62ad66"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "security_group_id" {
  description = "value of security group id"
}

variable "subnet_ids" {
  description = "value of subnet ids"
}