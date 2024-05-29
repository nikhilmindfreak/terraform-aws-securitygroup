variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "sg_name" {
  type = string
}

variable "sg_description" {
    type = string
}

variable "vpc_id" {
    type = string
}

variable "common_tags" {
    type = map
}

variable "sg_tags" {
    type = map
    default = {}
}

variable "outbound_rules" {    # ww gave default user have to over ride it
  type = list   
  default = [
    {
        from_port = 0   # we gave access to all
        to_port = 0
        protocol = "-1"  # -1 all protocols/all ports
        cidr_blocks = ["0.0.0.0/1"]  # blocks its a list
    }
  ]
}


variable "ingress_rules" {   
  default = []    # user will give what they want so we gave empty
}
