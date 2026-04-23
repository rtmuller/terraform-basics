# Terraform Basics

> **Companion lab** for the Medium article [**Creating Your First Instance with Terraform**](https://medium.com/@rafael_muller/creating-your-first-instance-with-terraform-20334f3023ef).
> Part of my Terraform fundamentals series — more on [Medium](https://medium.com/@rafael_muller).

---

## What you'll learn

How to provision your first AWS EC2 instance with Terraform from scratch — understanding providers, input variables, local state, and the `plan` → `apply` → `destroy` resource lifecycle.

## Architecture

```
┌──────────────────┐       ┌──────────────────────┐
│   Terraform      │       │   AWS                │
│   (local state)  │ ────► │   EC2 t3.small       │
│                  │       │   region: us-east-1  │
└──────────────────┘       └──────────────────────┘
```

## What's inside

| File | Purpose |
|------|---------|
| `provider.tf` | Declares the AWS provider (v5.31.0) and region |
| `variables.tf` | Defines `region` and `vm_name` input variables |
| `main.tf` | Creates the EC2 instance resource with tags |
| `backend.tf` | Configures local state backend |

## Prerequisites

- Terraform ≥ 1.5
- AWS CLI configured (`aws configure`) with a `default` profile
- An AWS account (free tier covers this lab)

## Quick start

```bash
# Initialize providers and backend
terraform init

# Preview what will be created
terraform plan

# Provision the instance
terraform apply
```

After `apply`, a `t3.small` EC2 instance named `vm01` will exist in `us-east-1`, tagged with `Terraform = true`.

## Cleanup

```bash
terraform destroy
```

Always destroy lab resources — EC2 instances accrue hourly charges.

## Key concepts

- **Providers** — how Terraform talks to cloud APIs (`hashicorp/aws`)
- **Input variables** — parameterize your infrastructure (`var.region`, `var.vm_name`)
- **State** — Terraform's source of truth for what exists (local backend here)
- **Resource lifecycle** — `plan` previews, `apply` creates, `destroy` removes

## Series

Part of my Terraform fundamentals series:

- **Next:** [Managing Environments with Terraform Workspaces](https://github.com/rtmuller/terraform-workspaces)
- **Also in series:** [Using Multiple Providers](https://github.com/rtmuller/terraform-multi-providers)

All articles on [Medium](https://medium.com/@rafael_muller).
