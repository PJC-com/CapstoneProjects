variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "server_size" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.micro"
}
