# cloud-devops-lab-2025
DevOps mini project

Prerequisites

Install:

terraform -v
aws --version


Configure AWS CLI:

aws configure

2.2 Initialize Terraform
cd infra/
terraform init

2.3 Create Network (VPC + Subnets)

Terraform will create:

VPC → 10.0.0.0/16

Public Subnet → for Bastion host

Private Subnet → for Application server

Internet Gateway + NAT Gateway

2.4 Provision EC2 Instances

Run:

terraform plan
terraform apply


This will create:

Bastion Host (public subnet)

App Server (private subnet)

2.5 Remote State Management

Terraform state is stored in S3 bucket.

State locking is enabled with DynamoDB.

3. Security & Automation (Terraform + Ansible)
3.1 Security Groups

Bastion SG:

Allow SSH (22) only from your IP.

Allow Jenkins (8080).

App SG:

Allow SSH only from Bastion SG.

Allow HTTP (80) + HTTPS (443) from public.

3.2 IAM Roles

App EC2 Role:

Access to S3, CloudWatch.

Bastion Role:

Access to AWS SSM Parameter Store.

3.3 Configure EC2s with Ansible

Playbook installs & configures:

Docker, Docker Compose, Python

Firewall (UFW/Fail2Ban)

Creates devops user, disables root SSH login
