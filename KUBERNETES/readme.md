````
https://kodekloud.com/k8s-commands-cheatsheet
````
# Kubernetes Basic Commands

### 🔹 **Check Nodes**

```bash
kubectl get nodes
```

✅ Shows all present nodes.

---

### 🔹 **Create Pod Using Command**

```bash
kubectl run pod-1 --image=nginx
```

✅ Creates a pod named **pod-1** with nginx.

---

### 🔹 **List Pods**

```bash
kubectl get pods
```

✅ Shows all running pods.

---

### 🔹 **Expose Pod To Access Application(Create Service Using Command)**



Types of Services:
1. ClusterIP
2. NodePort (30000-32767)
3. LoadBalancer


## ✅ **ClusterIP (Internal Access Only)**

```bash
kubectl expose pod pod-1 --port=80 --target-port=80 --type=ClusterIP
```
```
kubectl get svc
```

---

## ✅ **NodePort (Access from Browser using Node IP)**

```bash
kubectl expose pod pod-1 --port=80 --target-port=80 --type=NodePort
```
```
kubectl get svc
```

Access:

```text
http://<Node-IP>:<NodePort>
```

---
<img width="681" height="306" alt="image" src="https://github.com/user-attachments/assets/405e5f43-7f7f-457d-bbba-a32e34f7dd90" />



<img width="1382" height="720" alt="image" src="https://github.com/user-attachments/assets/b46a0da1-ec18-448e-90fb-c0ef4dc1db96" />
<img width="1240" height="177" alt="image" src="https://github.com/user-attachments/assets/5cb84abe-168e-46f4-851b-42478bbc389c" />
<img width="1368" height="617" alt="image" src="https://github.com/user-attachments/assets/2d67fa93-9cf9-4788-a13c-e89a0e8cd272" />
<img width="1098" height="597" alt="image" src="https://github.com/user-attachments/assets/10fd8887-d057-468d-bd03-921f745943b7" />
<img width="1236" height="462" alt="image" src="https://github.com/user-attachments/assets/a9d11bcc-a4be-4508-842b-11ecaa4f8cf7" />
<img width="1318" height="647" alt="image" src="https://github.com/user-attachments/assets/bc0c27b3-688e-4820-82d2-e5d5cfc0cda7" />

### Create practice k8s cluster
````
https://killercoda.com/playgrounds/scenario
````

### Dockerfile
````
FROM amazonlinux
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD ["httpd" ,"-D", "FOREGROUND"]
````

### build docker image
````
docker build -t devopsprofile/demo .
````

### login into dockerhub and push image
````
docker login -u devopsprofile
````

````
docker push devopsprofile/demo
````
### create first  pod
````
kubectl run pod-1 --image=devopsprofile/netflix
````

### access application
````
kubectl expose pod pod-1  --port=80 --target-port=80 --type=NodePort
````
<img width="1210" height="413" alt="image" src="https://github.com/user-attachments/assets/8bb7f9c5-d69b-40d5-8708-555ab9274f2c" />

### list service
````
kubectl get svc
````
<img width="1905" height="460" alt="image" src="https://github.com/user-attachments/assets/dae3631d-acd2-410d-9e7e-f3f1462b41d3" />
<img width="1916" height="762" alt="image" src="https://github.com/user-attachments/assets/fb293319-11a0-44c1-b3c5-0b65fc7c656a" />
<img width="1736" height="132" alt="image" src="https://github.com/user-attachments/assets/c324c929-28f8-4efd-9d45-e8581b21ec95" />

