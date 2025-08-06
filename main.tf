provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0d54604676873b4ec"
instance_type = "t2.medium"
key_name = "Mumbai"
vpc_security_group_ids = ["sg-0c87b1e5a6f745426"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}
