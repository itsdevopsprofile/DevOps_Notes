#AWS
Topic: EC2
- what is ec2 service ?
- instance types ?
- purchasing options ?
- diff instance states ?
- instance status check/health check ?
- what is ami ?
- what is snapshot ?
- diff ami vs snapshot 
- ebs volume types ?
- what is file system ?
- temp mount vs permanent mount ?
- what is firewall(security group)? explain inbound/outbound rules?
- common ports use in sg ?
- explain concept of ssh? 
- explain load balancing ?
- what are the diff types of load balancer ?
- diff alb vs nlb ?
- how autoscaling works?
---
Topic: VPC 
- what is vpc ?
- explain components of vpc ?
- diff public vs private subnet 
- what is eip ?
- diff default vs custome vpc?
- what is nat gw ?
- nacl vs sg ?
- what is jump server/bastion host ?
- explain vpc peering ?
- vpc cidr calculations ?
---


### 1. EC2 + Networking

Your application is deployed on an EC2 instance in a public subnet.
The instance is running and you can SSH into it successfully.
However, when you try to access the application via browser, it is not reachable.
Security group seems correct at first glance.
How will you troubleshoot this issue step by step?

---

### 2. Private Subnet Issue

You have deployed backend servers in a private subnet.
These servers need internet access to download packages and updates.
A NAT Gateway is already configured in the VPC.
Still, instances are not able to access the internet.
What could be the issue and how will you debug it?

---

### 3. S3 Access Problem

An EC2 instance has an IAM role attached with S3 full access.
But when you try to access the S3 bucket using AWS CLI, it gives “Access Denied”.
Bucket exists and is in the same account.
No obvious deny policy is visible.
How will you troubleshoot this issue?

---

### 4. Load Balancer Issue

Your application is deployed on EC2 instances behind an Application Load Balancer.
The ALB is up and receiving traffic, but users are getting 503 errors.
Health checks are failing for all targets.
Application is running fine when accessed directly from EC2.
What could be wrong and how will you fix it?

---

### 5. Auto Scaling Failure

You configured Auto Scaling based on CPU utilization.
During high traffic, CPU goes above 80%, but no new instances are launched.
CloudWatch alarms seem configured.
Users are experiencing performance issues.
How will you identify the root cause?

---

### 6. RDS Connectivity Issue

Your application is hosted on EC2 and uses an RDS database.
Suddenly, the application cannot connect to the database.
RDS instance status is “available”.
No recent changes were made to credentials.
How will you troubleshoot this?

---

### 7. CloudWatch Logs Missing

You configured CloudWatch agent on EC2 to push logs.
But logs are not appearing in CloudWatch dashboard.
Agent seems installed.
Application is generating logs locally.
What steps will you take to debug this?

---

### 8. High AWS Bill Scenario

Your AWS bill increased significantly this month.
No major deployments were done recently.
Management is asking for explanation.
You need to quickly identify the cause and reduce cost.
How will you approach this?

---

### 9. Cross-Account Access

Your company has multiple AWS accounts.
One account needs to access S3 buckets in another account securely.
You are not allowed to use access keys.
How will you design this access?

---

### 10. Production Down Scenario

Your production application suddenly goes down at night.
Users are unable to access the service.
You are the on-call DevOps engineer.
No immediate logs or alerts are visible.
What will be your first actions?

---
