variable "instance_type"{
  description = "specifying the ram, cpu"
  type = string
}

variable "keyPair"{
  description = "key pair for ssh to remote server"
  type = string
}