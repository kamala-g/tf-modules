variable "broker_name" {
  type = string
}

variable "engine_type" {
  type = string
}

variable "engine_version" {
         type = string
  }

variable "host_instance_type" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}
