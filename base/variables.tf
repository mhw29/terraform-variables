variable "enable_github_oidc" {
    description = "Enable github oidc module"
    type        = bool
    default     = false
}

variable "total_instances" {
    description = "Total instances to be created"
    type        = number
    default     = 0
}

variable "security_group_module_count" {
    description = "Number of security groups to be created"
    type        = number
    default     = 0
}

variable "security_group_module_version" {
    description = "Version of security group to be created"
    type        = string
    default     = "5.1.0"
}

variable "environment" {
    description = "Environment"
    type        = string
    default     = "dev"
}