# blue-dep.yaml
````
apiVersion: apps/v1
kind: Deployment
metadata: 
 name: test-dep


spec:
 replicas: 3
 selector: 
  matchLabels:
   app: blue

 template:
  metadata: 
   name: tmp-1
   labels:
    app: blue
  spec:
   containers:
   - name: c1
     image: abhipraydh96/blue:latest
     ports:
     - containerPort: 80
````
# apply blue-deployment 
````
kubectl apply -f blue-dep.yaml

````
# service.yaml
````
apiVersion: v1
kind: Service
metadata:
 name: svc-test
spec:
 selector:
  app: blue
 ports:
  - protocol: TCP
    port: 80
    targetPort: 80
 type: LoadBalancer
````
# apply service file
````
kubectl apply -f service.yaml
````
![image](https://github.com/user-attachments/assets/bb4c2ff0-1aac-4ad8-a70e-f719193ddeff)



---
# green-dep.yaml
````
apiVersion: apps/v1
kind: Deployment
metadata: 
 name: test-deploy


spec:
 replicas: 3
 selector: 
  matchLabels:
   app: green

 template:
  metadata: 
   name: tmp-1
   labels:
    app: green
  spec:
   containers:
   - name: c1
     image: abhipraydh96/green:latest
     ports:
     - containerPort: 80
````
### if you want to switch from blue to green just change selector in service.yaml

# edit service.yaml

````
apiVersion: v1
kind: Service
metadata:
 name: svc-test
spec:
 selector:
  app: green
 ports:
  - protocol: TCP
    port: 80
    targetPort: 80
 type: LoadBalancer
````

![image](https://github.com/user-attachments/assets/00ab54bf-da1a-4a4b-bcd6-9bea18602555)


