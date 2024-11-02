################################################################################
# General Variables from root module
################################################################################
variable "cluster_name" {
  type    = string
  default = "tdw-cluster"
}

################################################################################
# Variables from other Modules
################################################################################

variable "vpc_id" {
  description = "VPC ID which EKS cluster is deployed in"
  type        = string
  # default     = "vpc-03f2dbbcdfadabdb3"
}

variable "private_subnets" {
  description = "VPC Private Subnets which EKS cluster is deployed in"
  type        = list(any)
  # default = [ "subnet-040de6219e9432362", "subnet-01f19b9eda439a9b3", "subnet-0854fbf3730708b04"  ]
}

################################################################################
# Variables defined using Environment Variables
################################################################################

variable "rolearn" {
  description = "Add admin role to the aws-auth configmap"
}

