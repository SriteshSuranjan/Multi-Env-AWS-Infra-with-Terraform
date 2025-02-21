# **Multi-Environment AWS Infrastructure with Terraform**  

## **Overview**  
This project leverages **Terraform** to automate the provisioning and management of AWS infrastructure across multiple environments, including **development, staging, and production**. It follows **Infrastructure as Code (IaC)** best practices to ensure consistency, scalability, and efficient resource management.  

## Project Diagram : 

![Project-diagram](Multi-Env-Infra-Terraform.png)

## **Project Structure**  
```
Multi-Env-AWS-Infra-with-Terraform
│── aws_infra/               # Core Terraform configuration files
│   ├── my_bucket.tf         # S3 bucket configuration
│   ├── my_instance.tf       # EC2 instance setup
│   ├── my_table.tf          # DynamoDB table definition
│   ├── my_variables.tf      # Terraform variables
│── dynamodb.tf              # DynamoDB resource definition
│── ec2.tf                   # EC2 instance provisioning
│── outputs.tf               # Terraform output values
│── s3.tf                    # S3 bucket setup
│── terraform.tf             # Terraform backend configuration
│── variables.tf             # Global variables definition
│── README.md                # Project documentation
```

## **Prerequisites**  
Before executing the Terraform scripts, ensure the following dependencies are installed:  

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (latest version recommended)  
- [AWS CLI](https://aws.amazon.com/cli/) (configured with valid credentials)  
- An AWS account with the necessary permissions to create resources  

## **Setup & Deployment**  

### **Step 1: Initialize Terraform**  
Initialize the Terraform workspace and download necessary provider plugins:  
```sh
terraform init
```

### **Step 2: Validate Configuration**  
Ensure the configuration files are correctly formatted and valid:  
```sh
terraform validate
```

### **Step 3: Plan Infrastructure Changes**  
Generate and review an execution plan before applying changes:  
```sh
terraform plan
```

### **Step 4: Deploy Infrastructure**  
Apply the Terraform configuration to create AWS resources:  
```sh
terraform apply -auto-approve
```

### **Step 5: Destroy Infrastructure (If Required)**  
To delete all deployed resources, run:  
```sh
terraform destroy -auto-approve
```

## **Features**  
✅ **Automated AWS provisioning** using Terraform  
✅ **Multi-environment support** for dev, staging, and production  
✅ **Scalability and reusability** through parameterized configurations  
✅ **Efficient state management** using Terraform state files  

## **Future Enhancements**  
- Implement **IAM roles and security policies**  
- Add **state locking mechanism** using S3 & DynamoDB backend  
- Expand support for **VPC, Load Balancers, and RDS**  

## **Contributing**  
Contributions are welcome! Feel free to fork the repository and submit pull requests for improvements.  

## **License**  
This project is licensed under the **MIT License**. See `LICENSE` for details.  

---

