# Lab_1: VPC Public EC2

# Assignment 1
1.Create an IAM user that has programmatic access with the appropertiate permissions to create EC2 instances, VPCs, and subnets. Use this user to do the below      tasks.
2.Create a new VPC and a new public subnet, use any supported CIDR blocks.
3.Create an EC2 instance of t3.micro type and assign a tag to it as follows name= "Lab_1_instance", ensue the instance will be assigned a public IP.
4.Ensure the EC2 instance is created inside the newly created VPC public subnet above.
5.Finally destroy the terraform deployed infrastructure.

## Terraform project that creates:
- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance (t3.micro)

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
