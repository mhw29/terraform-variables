component "base" {
    source = "./base"
    inputs = {
        cluster_name_prefix = var.prefix
        enable_github_oidc = var.enable_github_oidc
        total_instances = var.total_instances
        security_group_module_count = var.security_group_module_count
        security_group_module_version = var.security_group_module_version
        environment = var.environment
    }
    providers = {
        aws = provider.aws.this
    }   
}

provider "aws" {
    region = "us-east-1"
}