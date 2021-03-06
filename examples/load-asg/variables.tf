variable "name" {
  description = "name of the project, use as prefix to names of resources created"
  default     = "asg-load-test"
}

variable "region" {
  default     = "eu-central-1"
  description = "AWS Region where teh project will be deployed"
  type        = string
}

variable "ssh_pubkey" {
  description = "File path to SSH public key"
  default     = "./id_rsa.pub"
}

variable "ssh_key" {
  description = "File path to SSH public key"
  default     = "./id_rsa"
}

variable "vpc_cidr" {
  description = "Top-level CIDR for the whole VPC network space"
  default     = "10.23.0.0/16"
}

variable "public_subnet_cidrs" {
  default     = ["10.23.11.0/24", "10.23.12.0/24", "10.23.13.0/24"]
  description = "A list of public subnet CIDRs to deploy inside the VPC"
}

#variable "dns_zone_name" {
#  description = "The name of the DNS zone on Route53 (example.com), to create records in for gitlab"
#  type        = "string"
#}

variable "web_app_name" {
  description = "To generate the DNS record for gitlab, prefix the zone"
  default     = "my-web-app"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the web-app host"
  type        = string
  default     = "t2.micro"
}

