variable "cluster_name" {
  default = "tradition-case-cluster"
}

variable "vpc_id" {
  description = "value of vpc id"
}

variable "subnet_ids" {
  description = "value of subnet ids"
}

variable "ami_type" {
  default = "BOTTLEROCKET_x86_64"
}

variable "instance_type" {
  default = "t3.large"
}