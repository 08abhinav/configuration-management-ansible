variable "cidr_block"{
    description = "cidr block for vpc"
    type = string
    default = "10.0.0.0/16"
}

variable "subnet_cidr"{
    description = "cidr block for subnet"
    type = string
    default = "10.0.0.0/24"
}

variable "az"{
    description = "availability zone"
    type = string
    default = "us-east-1a"
}