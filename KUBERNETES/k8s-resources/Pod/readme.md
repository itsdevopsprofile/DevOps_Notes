````
apiVersion: v1
kind: Pod 
metadata: 
  name: netflix
  labels: 
    app: movies
spec:
  containers:
    - name: container1
      image: abhipraydh96/netflix
      ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: svc-netflix
spec:
  selector:
    app: movies
  ports:
   - protocol: 
     port: 80
     targetPort: 80
  type: NodePort
````

## create pod
````
kubectl apply -f pod.yaml
````

````
kubectl get pods
kubectl get svc
````
