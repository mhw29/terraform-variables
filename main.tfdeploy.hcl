deployment "production" {
    variables = {
        aws_region = "us-east-1"
        cluster_name_prefix = "production"
        enable_github_oidc = true
        total_instances = 3
        security_group_module_count = 2
        security_group_module_version = "5.1.0"
        environment = "production"
    }
}
deployment "staging" {
    variables = {
        aws_region = "us-east-1"
        cluster_name_prefix = "staging"
        enable_github_oidc = true
        total_instances = 3
        security_group_module_count = 2
        security_group_module_version = "5.1.0"
        environment = "staging"
    }
}
deployment "development" {
    variables = {
        aws_region = "us-east-1"
        cluster_name_prefix = "development"
        enable_github_oidc = true
        total_instances = 3
        security_group_module_count = 2
        security_group_module_version = "5.2.0"
        environment = "development"
    }
}
