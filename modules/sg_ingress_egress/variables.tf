variable "egress" {
  description = "egress"
  type        = list(object({
    cidr_ipv4 = string
    description = string
    from_port = number
    to_port = number
    ip_protocol = string
  }))
  default = []
}
variable "ingress" {
  description = "egress"
  type        = list(object({
    cidr_ipv4 = string
    description = string
    from_port = number
    to_port = number
    ip_protocol = string
  }))
  default = []
}
variable "cidr_ipv4" {
  description = "cidr_ipv4"
  type        = string
  default = ""
}
variable "description" {
  description = "description"
  type        = string
  default = ""
}
variable "from_port" {
  description = "from_port"
  type        = number
  default = 000
}
variable "to_port" {
  description = "to_port"
  type        = number
  default = 000
}
variable "ip_protocol" {
  description = "ip_protocol"
  type        = string
  default = ""
}
variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}
variable "tags_all" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}
variable "security_group_id" {
  description = "security_group_id"
  type        = string
  default     = ""
}
variable "referenced_security_group_id" {
  description = "referenced_security_group_id"
  type        = string
  default     = ""
}
