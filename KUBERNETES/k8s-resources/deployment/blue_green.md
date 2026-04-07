# Topic: Blue Green  Deployment Strategy

---
# Blue Green Deployment

### blue version(old)
````
apiVersion: apps/v1 
kind: Deployment
metadata: 
  name: studentapp

spec: 
  replicas: 1
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
      - name: c2 
        image: abhipraydh96/studentapp:v1
        ports:
        - containerPort: 80
````
````
kubectl apply -f blue.yaml
kubectl get deploy
````

### service file
````
apiVersion: v1 
kind: Service 
metadata:
  name: svc-studentapp
spec:
  selector:
    app: blue
  ports:
   - protocol: "TCP"
     port: 80
     targetPort: 80
  type: NodePort
````
````
kubectl apply -f service.yaml
````
- note: if if you want to update version change label in service file blue to green
  
### green version(new)
````
apiVersion: apps/v1 
kind: Deployment
metadata: 
  name: studentapp2

spec: 
  replicas: 1
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
      - name: c2 
        image: abhipraydh96/studentapp:v2
        ports:
        - containerPort: 80
````
````
kubectl apply -f green.yaml
````

### switch traffic from blue to green
- edit service.yaml
- change selector from blue to green
