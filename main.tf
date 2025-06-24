#without using count meta argument by using for each we are doing the same.
provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "bibhu_instance" {
  for_each = tomap({                    #here we define the condition with 2 type of ami
    "bibhu-ami-id-micro" = "t2-micro"
    "bibhu-ami-id-medium" = "t2-medium"
  })
  ami           = var.bibhu_ec2_ami_id
  instance_type = each.value              # here we call them one by one

  root_block_device {
    volume_size = var.dev == "dev" ? 10 : var.default_root_volume_size
    volume_type = var.bibhu_volume_type
  }

  tags = {
    Name = each.key                 # both of type will use one by one
  }
}
