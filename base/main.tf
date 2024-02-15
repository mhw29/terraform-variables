module "iam_github_oidc_provider" {
    source    = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-provider"
    count   = var.enable_github_oidc ? 1 : 0
    tags = {
        Environment = "test"
    }
}

module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  count   = var.security_group_module_count
  version = "5.1.0"
  name    = "security_group_stable_${count.index}"
}

module "instances" {
    source = "./instances"
    count = var.total_instances
}