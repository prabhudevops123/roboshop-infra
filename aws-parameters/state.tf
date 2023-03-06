terraform {
  backend "s3" {}
      }

resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameter)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameter" {}