# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sgr-0b47fc73bb4a0bc70"
resource "aws_vpc_security_group_ingress_rule" "ing" {
  for_each = { 
    for inst in var.ingress : inst.cidr_ipv4 => inst
  }

  cidr_ipv4                    = each.value.cidr_ipv4
  description                  = each.value.description
  from_port                    = each.value.from_port
  ip_protocol                  = each.value.ip_protocol
  security_group_id            = var.security_group_id
  tags                         = var.tags
  to_port                      = each.value.to_port
}

# __generated__ by Terraform from "sgr-0ab442137d13e1946"
resource "aws_vpc_security_group_egress_rule" "egr" {
  cidr_ipv4                    = var.egress[0].cidr_ipv4
  description                  = var.egress[0].description
  from_port                    = var.egress[0].from_port
  ip_protocol                  = var.egress[0].ip_protocol
  security_group_id            = var.security_group_id
  tags                         = var.tags
  to_port                      = var.egress[0].to_port
}

output "myout" {
  value = var.egress
}


