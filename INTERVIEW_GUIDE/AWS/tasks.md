# AWS Hands-On Practice Tasks

## 1. Three-Tier Architecture Deployment

### Objective

Deploy a secure three-tier architecture on AWS.

### Requirements

* Create a custom VPC.
* Create 2 Public Subnets and 2 Private Subnets.
* Deploy an Application Load Balancer in Public Subnets.
* Deploy EC2 instances in Private Subnets.
* Deploy RDS MySQL in Private Subnets.
* Configure Security Groups appropriately.
* Verify communication between all tiers.

---

## 2. Auto Scaling with Application Load Balancer

### Objective

Automatically scale EC2 instances based on CPU utilization.

### Requirements

* Create a Launch Template.
* Create an Auto Scaling Group.
* Attach the Auto Scaling Group to an ALB.
* Configure CloudWatch Alarms.
* Scale Out when CPU utilization exceeds 70%.
* Scale In when CPU utilization falls below 30%.
* Monitor scaling activities.

---

## 3. RDS Multi-AZ Deployment

### Objective

Implement High Availability for databases.

### Requirements

* Create a MySQL RDS instance.
* Enable Multi-AZ deployment.
* Monitor database health and replication.
* Understand and test failover behavior.

---

## 4. VPC Endpoint for S3

### Objective

Access S3 without Internet Gateway or NAT Gateway.

### Requirements

* Create a Gateway VPC Endpoint for S3.
* Update route tables.
* Launch an EC2 instance in a private subnet.
* Access S3 from the private instance without internet access.

---

## 5. CloudWatch Monitoring and Alerts

### Objective

Monitor EC2 resources and receive notifications.

### Requirements

* Install CloudWatch Agent.
* Collect CPU, Memory, and Disk metrics.
* Create a CloudWatch Dashboard.
* Create SNS Topic and Subscription.
* Configure alarms for resource utilization.

---

## 6. IAM Change Detection Alert

### Objective

Receive alerts whenever IAM resources are modified.

### Requirements

* Enable CloudTrail.
* Create EventBridge Rules.
* Monitor IAM User creation.
* Monitor IAM Role creation.
* Monitor IAM Policy modifications.
* Send notifications through SNS.

---

## 7. S3 Bucket Activity Monitoring

### Objective

Track changes made to S3 buckets.

### Requirements

* Enable CloudTrail.
* Monitor Bucket Creation events.
* Monitor Bucket Deletion events.
* Monitor Bucket Policy modifications.
* Configure SNS email notifications.

---

## 8. S3 Lifecycle Policy

### Objective

Automatically manage object lifecycle.

### Requirements

* Create an S3 Bucket.
* Upload sample files.
* Configure Lifecycle Rules.
* Automatically transition or delete old objects.

---

## 9. Generate Pre-Signed URL

### Objective

Provide temporary access to private S3 objects.

### Requirements

* Upload objects to a private S3 bucket.
* Generate a Pre-Signed URL using AWS CLI.
* Verify temporary access to the object.

---

## 10. S3 Event Notification with Lambda

### Objective

Trigger automated actions when files are uploaded.

### Requirements

* Create an S3 Bucket.
* Create a Lambda Function.
* Configure S3 Event Notifications.
* Trigger Lambda whenever a new object is uploaded.
* Verify execution through CloudWatch Logs.

---

## 11. EBS Snapshot and Disaster Recovery

### Objective

Protect data using snapshots.

### Requirements

* Create an EBS Volume.
* Attach it to an EC2 instance.
* Store sample data.
* Create a Snapshot.
* Copy the Snapshot to another AWS Region.
* Restore a volume from the copied Snapshot.

---

## 12. Lambda-Based EC2 Start/Stop Automation

### Objective

Reduce AWS costs through automation.

### Requirements

* Create Lambda Functions for Start and Stop operations.
* Configure required IAM permissions.
* Schedule execution using EventBridge Scheduler.
* Verify automatic start and stop of EC2 instances.

---

## 13. VPC with NAT Instance

### Objective

Understand outbound internet access from private subnets.

### Requirements

* Create 2 Public and 2 Private Subnets.
* Launch a NAT Instance in a Public Subnet.
* Configure Route Tables.
* Verify internet access from instances in Private Subnets.

---

## 14. CloudFront with S3 Static Website

### Objective

Deliver content globally using CDN.

### Requirements

* Host a Static Website in S3.
* Create a CloudFront Distribution.
* Configure S3 as Origin.
* Enable HTTPS.
* Test content delivery through CloudFront.

---

## 15. Host Multiple Services on Single EC2

### Objective

Learn web server configuration.

### Requirements

* Install Nginx.
* Install Apache (Httpd).
* Configure both services on different ports.
* Host separate web pages using each service.

---

## 16. Nginx Reverse Proxy

### Objective

Route requests through a reverse proxy.

### Requirements

* Install Nginx.
* Deploy a backend application.
* Configure Nginx as Reverse Proxy.
* Validate request forwarding to the backend service.

---

## 17. EC2 CPU Utilization Alert

### Objective

Receive alerts during high resource usage.

### Requirements

* Create a CloudWatch Alarm.
* Configure threshold at 90% CPU utilization.
* Integrate SNS for email notifications.
* Test alert generation.

---

## 18. S3 Intelligent Tiering

### Objective

Optimize storage costs automatically.

### Requirements

* Create an S3 Bucket.
* Enable Intelligent-Tiering.
* Upload sample data.
* Understand object movement between tiers.

---

## 19. Enable ALB Access Logs

### Objective

Store Load Balancer logs for auditing and troubleshooting.

### Requirements

* Create an S3 Bucket.
* Enable ALB Access Logs.
* Configure required bucket permissions.
* Verify logs are stored successfully.

---

