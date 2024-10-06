# Devops-practice
## If privileges issue has to be come than follow these instruction (mysql)

revoke all privileges on *.* from 'db_name'@'localhost';
grant SELECT,INSERT,UPDATE,DELETE ON *.* TO 'db_name'@'localhost';
flush privileges;
SHOW GRANTS FOR 'db_name'@'localhost';
==========================================================
################# terraform_wordpress docs =============
'' Deploying WordPress on AWS using Terraform ''
Prerequisites:
AWS Account: Ensure you have an active AWS account.
AWS CLI: Install and configure AWS CLI on your machine.
Terraform: Install Terraform on your local machine.
IAM User: Create an IAM user with sufficient permissions to create the necessary AWS resources.
Step 1: Setting Up Terraform
Install Terraform: Download and install Terraform from the official site Terraform Installation.

Create a Directory: Create a directory for your Terraform configuration files.

mkdir wordpress-terraform
cd wordpress-terraform
Create provider configuration provider.tf
and create all cnfiguration file stored in wp_terraform
Initialize and Apply Terraform
Initialize Terraform: In your Terraform directory, run the following command to initialize Terraform. This will download the necessary providers and prepare the environment.


terraform init
Plan the Infrastructure: Run the plan command to preview the resources Terraform will create:


terraform plan
Apply the Configuration: Apply the configuration to create the EC2 instance, VPC, security groups, and other resources:


terraform apply
Note the EC2 Instance Public IP: Once the apply completes, Terraform will output the public IP of your EC2 instance, which you can use to access WordPress.

Step 5: Access the WordPress Site
After Terraform finishes deploying the infrastructure, access the WordPress setup by navigating to the public IP address of the EC2 instance in your browser.


http://<ec2-public-ip>
You should see the WordPress setup screen, where you can complete the installation process.

