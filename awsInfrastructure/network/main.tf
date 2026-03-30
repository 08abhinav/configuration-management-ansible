resource "aws_vpc" "myvpc"{
    cidr_block = var.cidr_block
}

resource "aws_internet_gateway" "myigw"{
    vpc_id = aws_vpc.myvpc.id
}

resource "aws_subnet" "mysb1"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr
    availability_zone = var.az
    map_public_ip_on_launch = true
}

resource "aws_route_table" "myrt"{
    vpc_id = aws_vpc.myvpc.id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.myigw.id
    }
}

resource "aws_route_table_association" "myrta"{
    subnet_id = aws_subnet.mysb1.id
    route_table_id = aws_route_table.myrt.id
}

resource "aws_security_group" "mysg"{
    name = "web-sg"
    vpc_id = aws_vpc.myvpc.id

    ingress{
        description = "HTTP traffic"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress{
        description = "SSH traffic"
        from_port = 22
        to_port = 22
        protocol = "ssh"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "web-sg"
    }
}

output "vpc_id"{
    value = aws_vpc.myvpc.id
}

output "subnet_id"{
    value = aws_subnet.mysb1.id
}

output "security_group"{
    value = aws_security_group.mysg.id
}