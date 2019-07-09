


variable "vpc_id" {
    description = "VPC to connect to, used for a security group"
    type = "string"
}

variable "prefix" {
    description = "a prefix for resources to be identified"
}

variable "policy-document" {
    description = "Blob text of a valid policy document"
    default = "
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}"

}


// 
// Tags 
//

variable "name" {
    default = "generic-iam"
}

variable "project" {
    default = "aws-cert"
}


variable "owner" {
    default = "icullinane"
}


variable "environment" {
    default = "dev"
}
