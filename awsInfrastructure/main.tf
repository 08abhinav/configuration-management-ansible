data "aws_ami" "ubuntu"{
  most_recent = true
  owners = ["099720109477"]

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

module "network" {
    source = "./network"
}

resource "aws_instance" "control_node"{
    ami = data.aws_ami.ubuntu.id
    key_name = var.keyPair
    instance_type = var.instance_type
    
    vpc_security_group_ids = [ module.network.security_group ]
    subnet_id = module.network.subnet_id

    tags = {
        Name = "control-node"
    }
}

resource "aws_instance" "managed_node1"{
    ami = data.aws_ami.ubuntu.id
    key_name = var.keyPair
    instance_type = var.instance_type
    
    vpc_security_group_ids = [ module.network.security_group ]
    subnet_id = module.network.subnet_id

    tags = {
        Name = "managed-node1"
    }
}

resource "aws_instance" "managed_node2"{
    ami = data.aws_ami.ubuntu.id
    key_name = var.keyPair
    instance_type = var.instance_type
    
    vpc_security_group_ids = [ module.network.security_group ]
    subnet_id = module.network.subnet_id

    tags = {
        Name = "managed-node2"
    }
}

output "control-node-ip"{
    value = aws_instance.control_node.public_ip
}

output "managed-node1-ip"{
    value = aws_instance.managed_node1.public_ip
}

output "managed-node2-ip"{
    value = aws_instance.managed_node2.public_ip
}