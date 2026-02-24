<img width="259" height="194" alt="image" src="https://github.com/user-attachments/assets/1421161a-a21d-44da-97f9-0a4d5fb832cf" />

Terraform is an open-source "infrastructure as code" (IaC) tool by HashiCorp that enables developers to 
define, provision, and manage cloud/on-premise resources (like servers, databases, networking) 
using declarative configuration files. It automates infrastructure lifecycles, allowing for consistent, 
version-controlled deployment across multiple providers like AWS, Azure, and GCP. 

---
## Key Aspects of Terraform
**Infrastructure as Code (IaC):** 
Instead of manually configuring cloud resources, you write human-readable definition files that describe the desired end state.
Declarative Approach: You define what the infrastructure should look like, and Terraform determines how to achieve that state.

---
**Provider Ecosystem:** 
Terraform uses plugins called providers to interact with cloud providers (AWS, Azure, Google Cloud, etc.), SaaS providers, and other services via APIs.

**Lifecycle Management:** 
It handles the entire lifecycle of infrastructure—creation, modification, and destruction—using commands like plan, apply, and destroy.

**State Management:** 
Terraform maintains a state file (terraform.tfstate) that maps real-world resources to your configuration, tracking changes and managing dependencies. 

---
## Common Use Cases
- **Cloud Provisioning:** Automating the setup of Virtual Private Clouds (VPCs), virtual machines, and storage.
- **Multi-Cloud Deployment:** Managing infrastructure across different cloud vendors using the same workflow.
- **Environment Consistency:** Replicating environments (e.g., development, staging, production) to reduce configuration drift. 
---

## Installation
````
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
````
or
````
https://developer.hashicorp.com/terraform/install
````
---
**Provider Setup**:
````
https://registry.terraform.io/browse/providers
````
````
https://registry.terraform.io/providers/hashicorp/aws/latest/docs
````
---
## create provider.tf file 
````
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  access_key = "wsxecrvtbynuim"
  secret_key = "a23xc4x56vc7vc8bxzx3z4x5z6x"
}
````

## initialised terraform 
````
terraform init
````
---
<img width="1918" height="777" alt="image" src="https://github.com/user-attachments/assets/d4198ef4-6c66-4e9c-8fb9-c97281945e90" />
<img width="1916" height="1000" alt="image" src="https://github.com/user-attachments/assets/cd520f1a-44c4-4e99-9487-c9f7751e6312" />

