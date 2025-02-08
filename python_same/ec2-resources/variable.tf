variable "ami_id" {
  default = "ami-0f2eac25772cd4e36"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_id" {
  type = string
}
variable "security_group_id" {
  type = string
}
variable "public_subnet_id" {
  type = string
}