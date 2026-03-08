# AGENTS.md

## Cursor Cloud specific instructions

This is a Terraform project that provisions an AWS EC2 instance in `us-west-2`.

### Project structure
- `main.tf` — AWS provider config and `aws_instance` resource definition
- `variables.tf` — Variable declarations for AWS credentials

### Required tools
- **Terraform** >= 1.2.0 (installed via HashiCorp APT repo)

### Key commands
| Action | Command |
|---|---|
| Initialize | `terraform init` |
| Validate (lint) | `terraform validate` |
| Format check | `terraform fmt -check -recursive` |
| Plan | `terraform plan` |
| Apply | `terraform apply` |

### Caveats
- `terraform plan` and `terraform apply` require AWS credentials (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) to be set as environment variables or configured via AWS CLI profile.
- `terraform fmt -check` reports `main.tf` has formatting differences — this is a pre-existing condition in the repo.
- The `.terraform/environment` file may reference a workspace named `test`; after a fresh `terraform init`, the default workspace is used. Run `terraform workspace select test` if needed.
