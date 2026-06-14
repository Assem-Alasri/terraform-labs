# Lab_1: VPC Public EC2

Terraform project that creates:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance (t2.micro)

## Usage

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Review execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply -auto-approve
```

Destroy infrastructure:

```bash
terraform destroy -auto-approve
```