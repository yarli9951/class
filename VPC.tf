
resource "aws_vpc" "new" {
  count            = "${terraform.workspace == "var.myworkspace" ? 0 : 1}"
  cidr_block       = var.cidr_block
  instance_tenancy = "default"


  tags = {
    Name = "${terraform.workspace}"
    #  Environment = "${terraform.workspace}"
  }

}
