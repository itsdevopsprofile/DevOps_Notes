
## Linux

1. Production server CPU suddenly reaches 100%. How do you troubleshoot?
2. Disk usage is 100% on a production server. What will you do?
3. Application is running but users cannot access it. How do you investigate?
4. A process keeps getting killed automatically. How do you find the reason?
5. Server rebooted unexpectedly at 2 AM. How do you investigate?
6. SSH access to a server suddenly stops working. What are your checks?

## Docker

7. A Docker container keeps restarting. How do you troubleshoot?
8. Application works locally but fails inside Docker. What could be wrong?
9. Container is running but the application is not accessible from the browser.
10. Docker image size has become 2 GB. How do you reduce it?
11. Production deployment fails because Docker image pull fails.
12. Docker volume data is missing after container recreation.

## Kubernetes

13. Pod is stuck in Pending state. How do you troubleshoot?
14. Pod is in CrashLoopBackOff. What is your approach?
15. Service is running but application is not accessible.
16. Deployment rollout failed after a new release.
17. PVC remains Pending in production.
18. Nodes suddenly become NotReady.
19. Ingress returns 404/502 errors.
20. HPA is not scaling pods despite high CPU usage.
21. One pod is receiving all traffic while others are idle.
22. After upgrading Kubernetes, workloads stop functioning.

## AWS

23. EC2 instance is running but website is unreachable.
24. ALB health checks are failing.
25. Auto Scaling Group launches instances that terminate immediately.
26. RDS CPU usage reaches 95%.
27. S3 bucket suddenly becomes publicly accessible.
28. Lambda function starts timing out.
29. NAT Gateway fails and private instances lose internet access.
30. EBS volume is full in production.

## Terraform

31. `terraform apply` fails due to state lock.
32. Someone manually changed AWS resources outside Terraform.
33. Terraform plans to recreate a production resource unexpectedly.
34. S3 backend state file gets deleted or corrupted.
35. Two engineers apply Terraform simultaneously.

## Jenkins / CI-CD

36. Jenkins pipeline suddenly starts failing after months of working.
37. Build succeeds but deployment fails.
38. SonarQube Quality Gate fails. What do you do?
39. Pipeline hangs indefinitely during deployment.
40. Rollback is required after a failed production deployment.

## Git

41. Wrong code is merged into the main branch and deployed to production.
42. Merge conflicts occur just before a release.
43. Someone force-pushes to the main branch.

## Monitoring / SRE

44. Production application response time increases from 200 ms to 5 seconds.
45. Users report intermittent 502/504 errors.
46. AlertManager sends hundreds of alerts overnight. How do you handle alert fatigue?
47. Grafana dashboard shows "No Data" for critical metrics.
48. Memory usage increases continuously until the application crashes.
49. Database connections are exhausted in production.
50. A critical production incident occurs at 3 AM. Describe your end-to-end incident response, investigation, mitigation, communication, rollback (if needed), and postmortem process.

