variable "vpc_name" {
  default = "tradition-case-vpc"
}

variable "vpc_cidr" {
  default = "10.3.0.0/16"
}

variable "azs" {
  default = ["ap-northeast-1a", "ap-northeast-1c"]
}

variable "public_subnets" {
  default = ["10.3.1.0/24", "10.3.2.0/24", "10.3.3.0/24"]
}
