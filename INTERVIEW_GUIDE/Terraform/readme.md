
### 1. What is Terraform?

Terraform is an Infrastructure as Code tool that allows us to provision and manage cloud resources using code instead of manual steps. It supports multiple cloud providers like AWS, Azure, and GCP.

---

### 2. How is Terraform different from other IaC tools?

Terraform is mainly used for infrastructure provisioning and supports multiple clouds.
Tools like Ansible and Puppet are mostly used for configuration management after infrastructure is created.

---

### 3. What are providers, resources, and modules?

In Terraform, a provider is used to connect to a cloud platform like AWS.
Resources are the actual services we create, like EC2 or S3.
Modules are reusable blocks of code that help in organizing and reusing infrastructure.

---

### 4. How do you secure sensitive data?

I avoid hardcoding secrets in the code. I use environment variables, `.tfvars` files, or secret management services like AWS Secrets Manager.

---

### 5. What is Terraform state?

Terraform state is a file that keeps track of the current infrastructure. It helps Terraform understand what is already created and what changes are needed.

---

### 6. Why is state important?

Without state, Terraform won’t know the existing infrastructure, so it may create duplicate resources or fail to update correctly.

---

### 7. How do you manage remote state?

I store the state file in an S3 bucket and use DynamoDB for state locking to avoid conflicts in team environments.

---

### 8. What are Terraform providers?

Providers act as plugins that allow Terraform to interact with different cloud platforms and services.

---

### 9. Immutable vs Mutable infrastructure?

In immutable infrastructure, we replace resources instead of updating them, which is safer.
In mutable infrastructure, we update existing resources, which is faster but can cause issues.

---

### 10. What are Terraform modules?

Modules are reusable Terraform configurations. They help reduce duplication and improve code organization.

---

### 11. How do you manage dependencies?

Terraform automatically handles dependencies, but if needed, I use `depends_on` to define explicit dependencies.

---

### 12. What are workspaces?

Workspaces allow us to manage multiple environments like dev, staging, and production using the same code.

---

### 13. Why use remote backend?

Remote backend helps in team collaboration, secure storage of state, and supports state locking.

---

### 14. How do you share Terraform code?

I use Git-based version control like GitHub or GitLab, follow branching strategies, and use pull requests for collaboration.

---

### 15. How do you upgrade Terraform?

I update the Terraform version and run `terraform init -upgrade` to upgrade providers safely.

---

### 16. Terraform vs Ansible?

Terraform is used to create infrastructure, while Ansible is used to configure and manage servers.

---

### 17. What are provisioners?

Provisioners are used to run scripts on resources after creation, but I avoid them unless absolutely necessary.

---

### 18. What is state locking?

State locking prevents multiple users from modifying infrastructure at the same time, avoiding conflicts.

---

### 19. Tell me about your project?

I worked on a 3-tier architecture project where I used Terraform to provision EC2 instances, RDS database, and a load balancer. I used modules and remote backend to manage the infrastructure efficiently.

---

## 🔹 SCENARIO QUESTIONS

### 1. How would you create a web application infrastructure?

I would use a modular approach, creating separate modules for VPC, EC2, RDS, and load balancer. Then I would integrate them in the main configuration.

---

### 2. How do you handle multiple environments?

I use Terraform workspaces or separate folders for dev, staging, and production environments.

---

### 3. How do you manage environment-specific variables?

I use different `.tfvars` files like dev.tfvars and prod.tfvars and pass them during execution.

---

### 4. How do you achieve zero downtime deployment?

I use strategies like blue-green deployment, where I create new infrastructure and switch traffic after validation.

---

### 5. How do you integrate Terraform with GitOps?

I store Terraform code in Git, and use CI/CD pipelines to automatically run Terraform commands when changes are pushed.

---

### 6. How do you manage large infrastructure?

I use modules, split state files, and use remote backend to keep the setup scalable and maintainable.

---

### 7. How do you handle multi-cloud?

I define multiple providers in Terraform and organize configurations based on cloud platforms.

---

### 8. How do you ensure security in Terraform?

I use IAM roles, encrypt state files, avoid hardcoding secrets, and follow least privilege access.

---

### 9. How do you ensure compliance?

I use tagging, policies, and auditing tools to meet compliance requirements.

---

### 10. Explain CI/CD pipeline for Terraform?

The pipeline includes init, plan, approval, and apply stages to ensure safe and automated infrastructure deployment.

---

