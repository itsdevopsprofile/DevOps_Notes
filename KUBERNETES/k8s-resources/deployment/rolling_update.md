# Topic: Rolling Update & Rollback Deployment Strategy

---
````
apiVersion: apps/v1 
kind: Deployment
metadata: 
  name: studentapp

spec: 
  replicas: 1
  selector: 
   matchLabels:
     app: studentapp

  template: 
   metadata:
      name: tmp-1
      labels:
        app: studentapp
   spec: 
     containers:
      - name: c2 
        image: abhipraydh96/studentapp:v1
        ports:
        - containerPort: 80
---
apiVersion: v1 
kind: Service 
metadata:
  name: svc-studentapp
spec:
  selector:
    app: studentapp
  ports:
   - protocol: "TCP"
     port: 80
     targetPort: 80
  type: NodePort
````

````
kubectl get deploy
````
````
kubectl get svc
````
## v1 


## Rolling Update
- switch to newer version
````
kubectl get deploy -o wide
````
````
kubectl set image deploy/studentapp  c2=abhipraydh96/studentapp:v2 --record
````
````
kubectl rollout history deploy/studentapp
````
## v2



## rollback to previous version
````
kubectl rollout undo deploy/studentapp
````
---
