
**Q1) What is AWS?**
**Answer:** AWS stands for Amazon Web Services. AWS is a platform that provides on-demand resources for hosting web services, storage, networking, databases, and other resources over the internet with a pay-as-you-go pricing model.

---

**Q2) What are the components of AWS?**
**Answer:** Key components include EC2 (Elastic Compute Cloud), S3 (Simple Storage Service), Route53, EBS (Elastic Block Store), CloudWatch, and Key-Pairs.

---

**Q3) What are key-pairs?**
**Answer:** Key-pairs are secure login credentials for your virtual machines (instances). They consist of a public key and a private key used to securely connect to instances.

---

**Q4) What is S3?**
**Answer:** S3 stands for Simple Storage Service. It's a storage service where you can store any amount of data from anywhere. It’s based on a pay-as-you-go model.

---

**Q5) What are the pricing models for EC2 instances?**
**Answer:**

* On-demand
* Reserved
* Spot
* Scheduled
* Dedicated

---

**Q6) What are the types of volumes for EC2 instances?**
**Answer:**

* Instance store volumes
* EBS (Elastic Block Stores)

---

**Q7) What are EBS volumes?**
**Answer:** EBS (Elastic Block Store) volumes are persistent storage volumes that can be attached to EC2 instances. They retain data even when the instance is stopped, unlike instance store volumes.

---

**Q8) What are the types of volumes in EBS?**
**Answer:**

* General Purpose
* Provisioned IOPS
* Magnetic
* Cold HDD
* Throughput Optimized

---

**Q9) What are the different types of instances?**
**Answer:**

* General Purpose
* Compute Optimized
* Storage Optimized
* Memory Optimized
* Accelerated Computing

---

**Q10) What is auto-scaling and what are its components?**
**Answer:** Auto-scaling automatically scales the number of EC2 instances up or down based on CPU or memory usage. Key components:

* Auto Scaling Groups
* Launch Configuration

---

**Q11) What are reserved instances?**
**Answer:** Reserved instances are EC2 instances you can reserve for a fixed capacity and term (1 or 3 years), which results in significant cost savings over on-demand pricing.

---

**Q12) What is an AMI?**
**Answer:** AMI stands for Amazon Machine Image. It’s a template that contains software configurations, launch permissions, and block device mappings used to launch EC2 instances.

---

**Q13) What is an EIP?**
**Answer:** EIP (Elastic IP address) is a static IPv4 address associated with your AWS account. It allows consistent IP access even when the underlying EC2 instance is stopped and restarted.

---

**Q14) What is CloudWatch?**
**Answer:** CloudWatch is AWS's monitoring tool used to monitor AWS resources and applications, tracking metrics like CPU usage, disk activity, and network traffic.

---

**Q15) What are the types in CloudWatch?**
**Answer:**

* Basic Monitoring (free)
* Detailed Monitoring (chargeable)

---

**Q16) What CloudWatch metrics are available for EC2 instances?**
**Answer:**

* DiskReads
* DiskWrites
* CPUUtilization
* NetworkPacketsIn
* NetworkPacketsOut
* NetworkIn
* NetworkOut
* CPUCreditUsage
* CPUCreditBalance

---

**Q17) What is the minimum and maximum size of individual objects you can store in S3?**
**Answer:**

* Minimum: 0 Bytes
* Maximum: 5 TB

---

**Q18) What are the different storage classes in S3?**
**Answer:**

* Standard (frequent access)
* Standard-IA (infrequent access)
* One-Zone IA
* Glacier
* RRS (Reduced Redundancy Storage)

---

**Q19) What is the default storage class in S3?**
**Answer:** Standard (frequent access)

---

**Q20) What is Glacier?**
**Answer:** Glacier is AWS's archival tool for long-term, low-cost storage. It is used to back up data that is infrequently accessed, with retrieval times ranging from minutes to hours.

---


**Q21) How can you secure access to your S3 bucket?**
**Answer:**

* Using ACL (Access Control List)
* Using Bucket Policies

---

**Q22) How can you encrypt data in S3?**
**Answer:**

* Server-Side Encryption with Amazon S3 (SSE-S3, AES-256)
* Server-Side Encryption with KMS (SSE-KMS)
* Client-Side Encryption (SSE-C)

---

**Q23) What are the parameters for S3 pricing?**
**Answer:**

* Storage used
* Number of requests
* Storage management
* Data transfer
* Transfer acceleration

---

**Q24) What is the prerequisite to work with Cross-Region Replication in S3?**
**Answer:**

* Versioning must be enabled on both source and destination buckets
* Source and destination buckets must be in different regions

---

**Q25) What are roles?**
**Answer:**
Roles grant permissions to trusted entities (users or services). Unlike users, roles don't require username/password and can be assumed by entities within or outside AWS.

---

**Q26) What are policies and what are the types of policies?**
**Answer:**
Policies define access permissions in AWS.
Types:

* Managed Policies
* Inline Policies

---

**Q27) What is CloudFront?**
**Answer:**
CloudFront is AWS’s Content Delivery Network (CDN) service that distributes content globally with low latency and high transfer speeds.

---

**Q28) What are edge locations?**
**Answer:**
Edge locations are the points in the CDN where content is cached and delivered to users. If content isn't cached, it's fetched from the origin and cached locally.

---

**Q29) What is the maximum size of an individual archive in Glacier?**
**Answer:**
Up to **40 TB**.

---

**Q30) What is VPC?**
**Answer:**
VPC (Virtual Private Cloud) allows you to create a logically isolated network within AWS. You can define your IP range, create subnets, and configure route tables, gateways, etc.

---

Q31) What are the types of routing policies in Route 53?
Answer:

Simple Routing

Latency Routing

Failover Routing

Geolocation Routing

Weighted Routing

Multi-value Answer

---
Q32) What is SNS?
Answer:
SNS (Simple Notification Service) is a pub/sub messaging service that sends messages to subscribers via SMS, email, Lambda, HTTP endpoints, or SQS.

---
Q33) How can you control security in your VPC?
Answer:
Using:

Security Groups (instance-level)

NACLs (Network Access Control Lists) (subnet-level)

---
Q34) What is a VPC Peering Connection?
Answer:
A VPC peering connection allows you to connect one VPC to another, enabling instances in both VPCs to communicate as if they were in the same network.

---
Q35) What are NAT Gateways?
Answer:
NAT (Network Address Translation) Gateways allow instances in a private subnet to access the internet, but prevent inbound traffic from the internet to those instances.

---
Q36) What is the difference between Security Groups and Network Access Control Lists (NACLs)?

Security Groups	Network ACLs
Operates at instance level	Operates at subnet level
Allows only Allow rules	Allows both Allow and Deny
Stateful	Stateless
Evaluates all rules	Evaluates rules in order
Unlimited groups	Max 5 per subnet
---
Q37) What are the types of Load Balancers in EC2?
Answer:

Application Load Balancer (ALB)

Network Load Balancer (NLB)

Classic Load Balancer (CLB)

Gateway Load Balancer
---
Q38) What is ELB?
Answer:
ELB (Elastic Load Balancer) automatically distributes incoming application or network traffic across multiple targets (EC2, IPs, containers) to ensure availability and fault tolerance.
---

Q39) What are the two types of access you can provide when creating users?
Answer:

Programmatic Access (API, CLI, SDK)

Console Access (AWS Management Console login)
---
Q40) What are the benefits of Auto Scaling?
Answer:

Improved Fault Tolerance

Better Availability

Cost Optimization
---

Q41) What are Security Groups?
Answer:
Security groups act as virtual firewalls for your EC2 instances. They control inbound and outbound traffic using allow rules. You can attach multiple groups to an instance.
---

Q42) What are Shared AMIs?
Answer:
Shared AMIs are Amazon Machine Images created by other developers and made available publicly or privately for others to use.
---

Q43) By default, how many IP addresses does AWS reserve in a subnet?
Answer:
AWS reserves 5 IP addresses in each subnet.
---

Q44) What is meant by a subnet?
Answer:
A subnet is a segmented piece of a larger IP network. In AWS, subnets allow you to divide your VPC's IP range into smaller, manageable networks.
---

Q45) How can you convert a public subnet to a private subnet?
Answer:

Remove the Internet Gateway (IGW)

Add a NAT Gateway

Associate the subnet with a private route table
---
Q46) Is it possible to reduce an EBS volume size?
Answer:
No, EBS volumes can only be increased in size, not reduced.
---
Q47) What is the use of Elastic IPs? Are they charged by AWS?
Answer:
Elastic IPs are static IPv4 addresses used for consistent external access to EC2. They are charged if not associated with a running instance.
---
Q48) One of my S3 buckets was deleted. Can I restore it?
Answer:
If versioning was enabled, the bucket’s objects can be restored. Without versioning, restoration is not possible.
---
Q49) When I try to launch an EC2 instance, I get a “Service limit exceeded” error. How do I fix this?
Answer:
You need to request a service limit increase via AWS Support.
---
Q50) Can I modify EBS volumes on Linux and Windows?
Answer:
Yes.

In Windows, use Disk Management

In Linux, mount and resize using commands (e.g., resize2fs)
---
Q51) Is it possible to stop an RDS instance? How?
Answer:
Yes, you can stop non-production RDS instances that are not Multi-AZ through the AWS Console or CLI.

---
Q52) What is the use of tags and how are they helpful?
Answer:
Tags are key-value pairs used to identify, group, and organize AWS resources. They help with:

Billing

Automation

Access control

Resource tracking
---
Q53) I am viewing the AWS console but cannot launch an instance. I get an IAM error. How can I fix it?
Answer:
The IAM user likely lacks the required permissions. You must assign the necessary IAM policy that allows launching EC2 instances.
---
Q54) I don’t want my AWS account ID to be exposed to users. How can I avoid it?
Answer:
You can customize your AWS IAM sign-in URL to mask the account ID with an alias.
---
Q55) By default, how many Elastic IP addresses does AWS offer per region?
Answer:
AWS provides 5 Elastic IPs per region by default.
---
Q56) You enabled sticky sessions with ELB. What does it do with your instance?
Answer:
Sticky sessions bind a user session to a specific EC2 instance, ensuring consistent routing for that session.
---
Q57) Which type of load balancer makes routing decisions at either the transport or application layer and supports both EC2 and VPC?
Answer:
Classic Load Balancer (CLB) supports Layer 4 (TCP) and Layer 7 (HTTP/HTTPS) routing for EC2 and VPC.
---
Q58) Which is a virtual network interface that you can attach to an instance in a VPC?
Answer:
Elastic Network Interface (ENI)
---
Q59) You launched a Linux EC2 instance and selected SSH, HTTP, HTTPS in the security group. Why is SSH needed?
Answer:
SSH is required to connect securely to your Linux instance via terminal (e.g., using PuTTY or terminal with a key).
---
Q60) You chose a Windows instance and want to change the security group. How will changes be applied?
Answer:
Changes to security group rules are applied immediately to the associated Windows instance.
---
Q61) Load Balancer and DNS service come under which type of cloud service?
Answer:
They fall under IaaS (Infrastructure as a Service).
---
Q62) You have an EC2 instance with an unencrypted volume. You want to create an encrypted volume from it. How can this be achieved?
Answer:

Create a snapshot of the unencrypted volume

Enable encryption during snapshot copy

Create a new encrypted volume from the copied snapshot
---
Q63) Where does a user specify the maximum number of instances in Auto Scaling?
Answer:
In the Auto Scaling Group settings or Launch Configuration.
---
Q64) What are the types of AMIs provided by AWS?
Answer:

Instance Store-backed AMI

EBS-backed AMI
---
Q65) After configuring ELB, how do you ensure that user requests are always routed to a single instance?
Answer:
Enable Sticky Sessions (Session Affinity).
---
Q66) When would you prefer Provisioned IOPS over Standard RDS storage?
Answer:
Use Provisioned IOPS for high-performance, I/O-intensive workloads such as batch processing or transactional systems.
---
Q67) If I’m using Multi-AZ deployment in RDS, can I use the standby DB for read/write operations?
Answer:
No, the standby DB in Multi-AZ is only for failover and not available for read/write operations.
---
Q68) Which AWS services are best to collect and process e-commerce data for near real-time analysis?
Answer:
Amazon DynamoDB (for fast read/write), and Amazon Kinesis or Lambda (for real-time processing).
---
Q69) A company is deploying a two-tier web app with limited staff and needs high availability. The app requires complex queries and joins. What AWS database fits best?
Answer:
Amazon RDS (supports relational databases with complex joins).
---
Q70) What are suitable use cases for Amazon DynamoDB?
Answer:

Storing metadata for Amazon S3

Session management

Gaming leaderboards

IoT data ingestion
(Not suitable for complex relational joins)
---


---

**Q71) Your application retrieves data from users’ mobile devices every 5 minutes and stores it in DynamoDB. Each day, it extracts data into S3 for visualization. How can you optimize backend costs?**
**Answer:**
Use **Amazon ElastiCache** to cache reads from DynamoDB and reduce provisioned throughput costs.

---

**Q72) Your web app on EC2 (Multi-AZ, RDS MySQL) has heavy read/write loads. You discover read contention. What should you do?**
**Answer:**

* **Deploy ElastiCache** in each AZ
* **Increase RDS instance size**
* **Use Provisioned IOPS**

---

**Q73) A startup runs 100 sensors that generate 4GB of monthly data. Now they plan to deploy 100K sensors with 2 years of storage. What's the best AWS setup?**
**Answer:**
Use a **6-node Amazon Redshift cluster** with \~96TB of storage for analytics.

---

**Q74) Your app renders images and also does general compute. Which AWS service is best suited?**
**Answer:**
Use an **Application Load Balancer** with **compute-optimized** or **GPU instances** for rendering.

---

**Q75) How do you change the instance type in an Auto Scaling group?**
**Answer:**
Modify the **Launch Configuration** with the new instance type.

---

**Q76) Your CMS on EC2 hits 100% CPU usage. What should you do to reduce the load?**
**Answer:**
Add an **Elastic Load Balancer** and register the EC2 instance with it to distribute traffic.

---

**Q77) What does connection draining do in a Load Balancer?**
**Answer:**
It **gracefully reroutes traffic** from unhealthy or updating instances to prevent user disruption.

---

**Q78) When an instance becomes unhealthy, it's terminated and replaced. Which service does this?**
**Answer:**
**Auto Scaling** handles health checks and **automatically replaces** failed instances.

---

**Q79) What are lifecycle hooks in Auto Scaling?**
**Answer:**
They allow **custom actions or wait times** during instance launch or termination (scale in/out events).

---

**Q80) If Auto Scaling fails to launch an instance for over 24 hours, what happens?**
**Answer:**
**Auto Scaling suspends** the scaling process until the issue is resolved.

---

---

**Q81) You want to give temporary access to S3 to users without creating IAM users. How can you do this?**
**Answer:**
Use **pre-signed URLs** to grant temporary, time-limited access to S3 objects.

---

**Q82) What is an IAM policy simulator?**
**Answer:**
It's a tool to **test and troubleshoot** IAM policy permissions to verify what actions are allowed or denied.

---

**Q83) What is AWS Config?**
**Answer:**
AWS Config is a service that lets you **assess, audit, and evaluate** the configuration of your AWS resources over time.

---

**Q84) What is the use of AWS CloudTrail?**
**Answer:**
CloudTrail enables **monitoring and logging** of all **API calls and account activity**, useful for auditing and security analysis.

---

**Q85) What are placement groups?**
**Answer:**
Placement groups influence how instances are **physically placed** within the AWS infrastructure to meet **latency or throughput** requirements. Types:

* **Cluster**
* **Spread**
* **Partition**

---

**Q86) What is the maximum size of an S3 object that can be uploaded through a single PUT operation?**
**Answer:**
Up to **5 GB** in a single PUT operation.

---

**Q87) What is a multipart upload in S3?**
**Answer:**
Multipart upload allows you to **upload large objects (up to 5 TB)** in parts, which is more efficient and resilient.

---

**Q88) You are building a fault-tolerant web app using EC2, ELB, and RDS. How can you improve disaster recovery?**
**Answer:**
Deploy EC2, ELB, and RDS in **Multi-AZ and Multi-Region**, and **enable automated backups**.

---

**Q89) What is Amazon Inspector?**
**Answer:**
Amazon Inspector is an **automated security assessment** service that helps identify vulnerabilities and deviations from best practices.

---

**Q90) What is AWS Trusted Advisor?**
**Answer:**
Trusted Advisor provides **real-time guidance** to help you follow AWS best practices across **cost optimization, security, fault tolerance, performance, and service limits**.

---

---

**Q91) You want to ensure data on EBS is not accessible after deletion. What should you do?**
**Answer:**
Enable **encryption** on EBS volumes so that when deleted, the data becomes **unrecoverable** without the key.

---

**Q92) What is the default retention period for AWS CloudWatch logs?**
**Answer:**
There is **no default expiration** — logs are retained **indefinitely** unless a **retention policy** is manually set.

---

**Q93) Can you vertically scale an RDS instance?**
**Answer:**
Yes, you can **modify the instance type** to a larger one to scale vertically.

---

**Q94) What is AWS OpsWorks?**
**Answer:**
AWS OpsWorks is a **configuration management** service that uses **Chef or Puppet** to automate infrastructure configuration, deployment, and management.

---

**Q95) What is the use of AWS Systems Manager?**
**Answer:**
AWS Systems Manager helps you **manage EC2 instances**, **run commands**, **patch** systems, and **automate operational tasks** across your fleet.

---

**Q96) You have EC2 in a public subnet and want it to access the internet. What must be configured?**
**Answer:**

* Attach an **Internet Gateway (IGW)** to the VPC
* Configure **route tables**
* Assign a **public IP**

---

**Q97) What is a bastion host in AWS?**
**Answer:**
A **bastion host** is an instance used to **securely access** private instances in a VPC. It typically resides in a **public subnet**.

---

**Q98) What is Elastic Beanstalk?**
**Answer:**
Elastic Beanstalk is a **PaaS** that allows developers to quickly **deploy and manage applications** without worrying about the underlying infrastructure.

---

**Q99) What is AWS CloudFormation?**
**Answer:**
CloudFormation is an **Infrastructure as Code (IaC)** service that allows you to **provision AWS resources using templates (YAML or JSON)**.

---

**Q100) Can one Elastic IP be assigned to multiple EC2 instances?**
**Answer:**
**No**, an Elastic IP can only be associated with **one instance at a time**.

---


---

**Q91) You want to ensure data on EBS is not accessible after deletion. What should you do?**
**Answer:**
Enable **encryption** on EBS volumes so that when deleted, the data becomes **unrecoverable** without the key.

---

**Q92) What is the default retention period for AWS CloudWatch logs?**
**Answer:**
There is **no default expiration** — logs are retained **indefinitely** unless a **retention policy** is manually set.

---

**Q93) Can you vertically scale an RDS instance?**
**Answer:**
Yes, you can **modify the instance type** to a larger one to scale vertically.

---

**Q94) What is AWS OpsWorks?**
**Answer:**
AWS OpsWorks is a **configuration management** service that uses **Chef or Puppet** to automate infrastructure configuration, deployment, and management.

---

**Q95) What is the use of AWS Systems Manager?**
**Answer:**
AWS Systems Manager helps you **manage EC2 instances**, **run commands**, **patch** systems, and **automate operational tasks** across your fleet.

---

**Q96) You have EC2 in a public subnet and want it to access the internet. What must be configured?**
**Answer:**

* Attach an **Internet Gateway (IGW)** to the VPC
* Configure **route tables**
* Assign a **public IP**

---

**Q97) What is a bastion host in AWS?**
**Answer:**
A **bastion host** is an instance used to **securely access** private instances in a VPC. It typically resides in a **public subnet**.

---

**Q98) What is Elastic Beanstalk?**
**Answer:**
Elastic Beanstalk is a **PaaS** that allows developers to quickly **deploy and manage applications** without worrying about the underlying infrastructure.

---

**Q99) What is AWS CloudFormation?**
**Answer:**
CloudFormation is an **Infrastructure as Code (IaC)** service that allows you to **provision AWS resources using templates (YAML or JSON)**.

---

**Q100) Can one Elastic IP be assigned to multiple EC2 instances?**
**Answer:**
**No**, an Elastic IP can only be associated with **one instance at a time**.

---



---

**Q101) What is the use of AWS CLI?**
**Answer:**
AWS CLI (Command Line Interface) allows you to **interact with AWS services** from a terminal using **commands** rather than the AWS Console. It's useful for automation and scripting.

---

**Q102) What is the difference between an IAM Role and an IAM User?**
**Answer:**

* **IAM User**: Represents a person/service with **long-term credentials** (username/password or access keys).
* **IAM Role**: Has **temporary credentials** and is meant to be **assumed** by services or other users.

---

**Q103) What is AWS KMS?**
**Answer:**
AWS KMS (Key Management Service) allows you to **create and manage encryption keys** and control their use across AWS services.

---

**Q104) How is IAM different from KMS?**
**Answer:**

* **IAM**: Controls **who** can access **what** resources
* **KMS**: Manages **how** data is encrypted/decrypted via keys

---

**Q105) What is EC2 hibernation?**
**Answer:**
EC2 hibernation saves the **in-memory (RAM) state**, **EBS volumes**, and **instance metadata** so that the instance can **resume faster** from where it left off.

---

**Q106) What is the default max number of EC2 instances per region?**
**Answer:**
By default, you can launch **up to 20 EC2 instances** per region. This can be increased by **requesting a service limit increase**.

---

**Q107) What happens if I delete the root volume of an EC2 instance?**
**Answer:**

* If **Delete on Termination** is **enabled**, the root volume will be **deleted** with the instance.
* If **disabled**, the volume will **persist** after instance termination.

---

**Q108) What is the use of a user-data script in EC2?**
**Answer:**
User-data scripts are used to **automate boot-time configuration** like installing packages, updates, setting environment variables, etc.

---

**Q109) What is a security best practice for root account access?**
**Answer:**

* **Disable root access for daily tasks**
* **Create IAM users**
* **Enable MFA (Multi-Factor Authentication)**

---

**Q110) What are AWS Organizations?**
**Answer:**
AWS Organizations allows you to **centrally manage billing, policies, and access** across multiple AWS accounts. It supports **Service Control Policies (SCPs)** and consolidated billing.

---



---

**Q111) What is a Spot Instance?**
**Answer:**
A Spot Instance lets you bid on unused EC2 capacity at a **lower price**. It's ideal for **fault-tolerant** and **flexible** applications. AWS can **terminate it anytime** if the capacity is needed elsewhere.

---

**Q112) Can you recover a terminated EC2 instance?**
**Answer:**
**No**, once an EC2 instance is terminated, it **cannot be recovered**. Only **data on preserved EBS volumes** can be accessed if deletion was disabled.

---

**Q113) What is Amazon MQ?**
**Answer:**
Amazon MQ is a managed **message broker service** for Apache ActiveMQ and RabbitMQ. It enables applications to **communicate via message queues and topics**.

---

**Q114) What is Amazon EFS?**
**Answer:**
Amazon EFS (Elastic File System) is a **scalable, fully managed NFS file system** that can be mounted across multiple EC2 instances simultaneously.

---

**Q115) What is AWS Batch?**
**Answer:**
AWS Batch enables you to **run hundreds of thousands of batch computing jobs** efficiently on AWS. It dynamically provisions compute resources based on job volume.

---

**Q116) What is AWS Lambda\@Edge?**
**Answer:**
Lambda\@Edge runs **Lambda functions at AWS edge locations**, enabling you to customize content closer to users with **lower latency**.

---

**Q117) What is a Lambda function timeout limit?**
**Answer:**
The **maximum timeout** for a Lambda function is **15 minutes (900 seconds)**.

---

**Q118) Can Lambda functions access VPC resources?**
**Answer:**
Yes, by **configuring VPC access**, a Lambda function can connect to **private subnets, RDS, or other VPC-bound resources**.

---

**Q119) What is AWS X-Ray?**
**Answer:**
AWS X-Ray helps developers **analyze and debug** production, distributed applications. It provides **end-to-end request tracing** and performance insights.

---

**Q120) What is an IAM inline policy?**
**Answer:**
An inline policy is **embedded directly** within a single IAM user, group, or role. It's **tightly coupled** and not reusable across multiple entities.

---


Q121) What is a managed policy in IAM?
Answer:
A managed policy is an IAM policy created and managed by AWS or the user. It can be attached to multiple users, groups, or roles, making it reusable and easier to manage.

Q122) What is the difference between inline and managed policies?
Answer:

Inline Policy: Embedded directly within a single IAM identity, not reusable.

Managed Policy: Standalone, reusable, and can be attached to multiple IAM identities.





