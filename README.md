<h1>Terraform-Azure</h1>
This repository contains Terraform code to deploy an Azure infrastructure.

<h2>Requirements</h2>
Before you can use this Terraform code, you'll need to have the following installed:
<br></br>

+ Terraform version 1.0.0 or higher
+ Azure CLI version 2.23.0 or higher
+ You'll also need to have an Azure account and subscription.

<h2>Getting started</h2>
To get started with this Terraform code, follow these steps:
<br></br>

1. Clone the repository:<b> git clone https://github.com/george-markou/Terraform-Azure.git</b>
2. Navigate to the repository: <b>cd Terraform-Azure</b>
3. Initialize Terraform: <b>terraform init</b>
4. Authenticate with Azure: <b>az login</b>
5. Set your Azure subscription: <b>az account set --subscription <subscription_id></b>
6. Plan the Terraform deployment: <b>terraform plan</b>
7. Deploy the Terraform <b>infrastructure: terraform apply</b>

<h2>Cleaning up</h2>
To delete the Terraform infrastructure and any resources created by it, run <b>terraform destroy</b>.
<br></br>
Note that this will permanently delete all resources created by this Terraform code, so use it with caution.

<h2>Contributing</h2>
If you find a bug or have an improvement suggestion, please create an issue or a pull request.

<h2>License</h2>
This Terraform code is licensed under the MIT License. See the LICENSE file for details.
