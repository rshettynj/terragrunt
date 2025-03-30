include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../modules/sg_ingress_egress"
}

inputs = {
    description = "lg-sg"
    security_group_id = "sg-00740ac44c84175f4"
  egress = [{
    cidr_ipv4      = "0.0.0.0/0"
    description      = ""
    from_port        = 0
    ip_protocol         = "-1"
    self             = false
    to_port          = 0
  }] 
  ingress = [
    {
    cidr_ipv4      = "0.0.0.0/0"
    description      = ""
    from_port        = 80
    ip_protocol         = "tcp"
    self             = false
    to_port          = 80
  },
  {
    cidr_ipv4      = "10.0.0.8/32"
    description      = ""
    from_port        = 8080
    ip_protocol         = "tcp"
    self             = false
    to_port          = 8080
  },
    {
    cidr_ipv4      = "10.0.0.0/24"
    description      = ""
    from_port        = 8081
    ip_protocol         = "tcp"
    self             = false
    to_port          = 8081
  }
]
  name                   = "lb-sg"
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0b7ce3ee57cdb303a"

  use_name_prefix = false
}
