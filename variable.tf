
variable "default_root_volume_size" {
  description = "The size of the root volume in GiB"
  type        = number
  default     = 20
}
variable "bibhu_volume_type" {
  description = "Bibhu volume type is gp3"
  type = string
  default = "gp3"
}
variable "bibhu_instance_type" {
  description = "Bibhu instance type is t2.micro"
  type = string
  default = "t2.micro"
}
variable "bibhu_ec2_ami_id" {
  default = "ami-0f39276b2d3b617c4"
  type = string
}

variable "prod" {
  default = "prod"
  type = string
}

variable "dev" {
  default = "dev"
  type = string
}
