variable env {
  type = string
  description = "(Required) The target environment i.e production, playground, etc"
}

variable region {
  type = string
  description = "(Required) One of us-east-2, us-east-1, us-west-1, us-west-2, ap-south-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-northeast-1, us-west-2, eu-central-1, eu-west-1, eu-west-2, sa-east-1"
}

variable "dc_name" {
  type = string
  description = "(Required) The data center name"
}
