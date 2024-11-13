variable "aws_region" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_blocks" {
  type = list(string)
}

variable "mq_broker_name" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "engine_type" {
  type = string
}

variable "host_instance_type" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}
