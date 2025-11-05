variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}
