    plugin "aws" {
    enabled = true
    version = "0.21.1"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
    }

    config {
    call_module_type = "local"
    force = false
    }

    rule "aws_resource_missing_tags" {
    enabled = true
    tags = [
        "Name",
        "Environment",
    ]
    }

    rule "terraform_deprecated_interpolation" {
    enabled = true
    }

    rule "terraform_deprecated_index" {
    enabled = true
    }

    rule "terraform_unused_declarations" {
    enabled = true
    }

    rule "terraform_comment_syntax" {
    enabled = false
    }

    rule "terraform_documented_outputs" {
    enabled = true
    }

    rule "terraform_documented_variables" {
    enabled = true
    }

    rule "terraform_typed_variables" {
    enabled = true
    }

    rule "terraform_module_pinned_source" {
    enabled = true
    }

    rule "terraform_naming_convention" {
    enabled = true

    variable {
        format = "snake_case"
    }

    locals {
        format = "snake_case"
    }

    output {
        format = "snake_case"
    }

    resource {
        format = "none"
    }

    module {
        format = "none"
    }

    data {
        format = "none"
    }
    }

    rule "terraform_required_version" {
    enabled = true
    }

    rule "terraform_required_providers" {
    enabled = true
    }

    rule "terraform_standard_module_structure" {
    enabled = true
    }

    rule "terraform_workspace_remote" {
    enabled = true
    }
