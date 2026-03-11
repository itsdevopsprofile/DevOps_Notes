<img width="1437" height="603" alt="image" src="https://github.com/user-attachments/assets/6fd6c092-33c1-402e-a38d-82e85a0ada77" />

---
### step1: install terraform

---

### step2: download aws cli
````
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
````
---

### login into aws and create profile 
````
aws configure --profile "tf-user"
````
---
### create provider.tf fiile
````
provider "aws" {
    region = "ap-southeast-1"
    profile = "tf-user"
}
````
---
### create s3 bucket and dynamodb table

<img width="1081" height="383" alt="image" src="https://github.com/user-attachments/assets/924057df-4413-401b-93be-cf1ef4a8e5df" />

<img width="1710" height="615" alt="image" src="https://github.com/user-attachments/assets/1c7f28b9-aff0-4c06-b364-66a1ee6c1cfd" />

---

### create backend.tf file
````
terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-devops-batch"
    key = "backup/terraform.tfstate"
    region = "ap-southeast-1"
    profile = "tf-user"
    dynamodb_table = "tf-state-lock"
    
  }
}
````
---
### create resource 
````
resource "aws_instance" "example" {
  ami           = "ami-0be9cb9f67c8dabd6"
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
````
- terraform init
- terraform apply -auto-approve

---

### go to s3 and check if state file created or not 
<img width="1572" height="391" alt="image" src="https://github.com/user-attachments/assets/792b2fc5-8353-41f6-9102-f0be056abb8e" />
