locals {
  foo = "bar"
}

output "dc_name" {
  description = "The dc name"
  value       = var.dc_name
}
output "foo" {
  description = "The value of foo"
  value       = local.foo
}

variable "dc_name" {
  type = string
  description = "(Required) The data center name"
}
