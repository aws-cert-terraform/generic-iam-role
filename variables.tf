


// variable "vpc_id" {
//     description = "VPC to connect to, used for a security group"
//     type = "string"
// }

variable "prefix" {
    description = "a prefix for resources to be identified"
}



// 
// Tags 
//

variable "profile_name" {
    default = "GenericAccessRole"
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

