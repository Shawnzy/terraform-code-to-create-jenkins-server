# AWS Jenkins Server with Terraform
This repository contains Terraform configurations for setting up a Jenkins Server on an AWS EC2 instance. It automates the provisioning of all necessary AWS resources including EC2 instances, AMI, VPCs, Subnets, Security Groups, and an Internet Gateway.  
<br>

## Project Overview
This project aims to provide a quick and reliable way to deploy a Jenkins Server in an AWS environment using Infrastructure as Code (IaC) practices with Terraform.  
<br>

### Prerequisites
- AWS Account
- Terraform installed on your local machine
- Basic understanding of AWS services and Terraform  
<br>

### AWS Resources Created
- **EC2 Instance**: Hosts the Jenkins Server.
- **AMI**: Amazon Linux 2 AMI (or specify your preferred AMI).
- **VPC**: A Virtual Private Cloud for resource isolation.
- **Subnets**: Public and private subnets within the VPC.
- **Security Groups**: Rules for controlling access to the EC2 instance.
- **Internet Gateway**: For connecting the VPC with the internet.
- **S3 Bucket**: For remote storage of TF State file.  
<br>
<br>

## Getting Started
<br>

### Configuration
Clone the repository:
```bash
git clone https://github.com/Shawnzy/terraform-code-to-create-jenkins-server.git
cd terraform-code-to-create-jenkins-server
```  
<br>

### Setting up AWS Credentials
Ensure that your AWS credentials are configured. You can set them up using the AWS CLI:
```bash
aws configure
```  
<br>

### Customization
Edit the Terraform configuration files to match your specific requirements. You can modify the instance types, VPC settings, etc.  

### Initializing Terraform
Initialize Terraform to download the necessary providers:
```bash
terraform init
```  
<br>

### Planning
Review the Terraform execution plan to see the actions Terraform will perform:
```bash
terraform plan
```
<br>  

### Applying
Apply the configuration to start building the AWS infrastructure:
```bash
terraform apply -auto-approve
```  
<br>

### You can check the status of the Jenkins service using the command (after Terraform has completed AWS Setup):
1. SSH into instance
2. `sudo systemctl status jenkins`  
<br>

### Find initial password to log into Jenkins
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`  
<br>

### Customize Jenkins 
1. Choose "Install suggested plugins"
    - If you want to have a more lean running EC2 machine and you know all of the plugins you need, choose "Select plugins to install"  
 <br>
 
### Cleaning Up (local Terraform directory)
To remove the AWS infrastructure, use:
```bash
terraform destroy
```
<br>

### Disclaimer
This project is for demonstration purposes and not meant for production use without proper modifications and security considerations.

 

