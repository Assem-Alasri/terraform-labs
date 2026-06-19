# Lab-02: AWS IAM User, Elastic IP & NAT Gateway Provisioning with Terraform

## Project Overview

This lab demonstrates the use of Terraform to provision AWS infrastructure components using Infrastructure as Code (IaC).

The deployed resources include:

* IAM User
* Elastic IP (EIP)
* NAT Gateway
* Supporting VPC Infrastructure
* Terraform Outputs

The lab also demonstrates how to retrieve resource information directly from Terraform outputs and how to destroy all deployed resources after validation.

---

## Objectives

The objectives of this lab are:

1. Create an IAM user named:

   Lab-02_user

2. Create a new Elastic IP address.

3. Create a NAT Gateway.

4. Associate the Elastic IP with the NAT Gateway.

5. Display the following values on the terminal:

   * Elastic IP Address
   * IAM User ARN
   * NAT Gateway ID

6. Destroy all deployed resources using Terraform.

---

## Technologies Used

* Terraform
* AWS IAM
* AWS NAT Gateway
* AWS Elastic IP
* AWS VPC
* AWS Subnet

---

## Architecture Diagram

```
            AWS Cloud
                 │
                 ▼

      +--------------------+
      |      IAM User      |
      |   Lab-02_user      |
      +--------------------+

                 │

                 ▼

      +--------------------+
      |    Elastic IP      |
      +--------------------+
                 │
                 ▼
      +--------------------+
      |    NAT Gateway     |
      +--------------------+
                 │
                 ▼
      +--------------------+
      |   Public Subnet    |
      +--------------------+
                 │
                 ▼
      +--------------------+
      |       VPC          |
      +--------------------+
```

---

## Project Structure

lab-02/

├── provider.tf

├── variables.tf

├── main.tf

├── outputs.tf

├── terraform.tfvars

├── README.md



---

## Resources Created

### IAM User

An IAM user is created with the following name:

Lab-02_user

Terraform Resource:

aws_iam_user

---

### Elastic IP

A static public IP address is allocated using:

aws_eip

---

### NAT Gateway

A NAT Gateway is created and attached to the Elastic IP.

Terraform Resource:

aws_nat_gateway

---

## Deployment Steps

### Initialize Terraform

terraform init

### Validate Configuration

terraform validate

### Review Execution Plan

terraform plan

### Deploy Resources

terraform apply

Type:

yes

when prompted.

or 
terraform apply -auto-approve

---

## Output Verification

Terraform outputs display:

* Elastic IP Address
* IAM User ARN
* NAT Gateway ID

Run:

terraform output

Example:

elastic_ip = "44.xxx.xxx.xxx"

iam_user_arn = "arn:aws:iam::123456789012:user/Lab-02_user"

nat_gateway_id = "nat-xxxxxxxxxxxxx"

---


## Destroy Infrastructure

Run:

terraform destroy

Type:

yes

when prompted.

or 
terraform destroy -auto-approve

## Learning Outcomes

By completing this lab, I learned how to:

* Manage AWS resources using Terraform.
* Create IAM users through Infrastructure as Code.
* Allocate and manage Elastic IP addresses.
* Deploy NAT Gateways.
* Retrieve resource information using Terraform outputs.
* Manage the full infrastructure lifecycle using:

  * terraform init
  * terraform plan
  * terraform apply
  * terraform destroy

---

