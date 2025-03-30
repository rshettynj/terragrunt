include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../modules/sg"
}

inputs = {
    description = "lg-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 8080
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 8080
  }]
  name                   = "lb-sg"
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0b7ce3ee57cdb303a"

  use_name_prefix = false
}
