## launch instance install docker 

````
sudo yum update
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
newgrp docker
sudo chmod 777 /var/run/docker.sock
````
## create index.html file 
````
vim index.html
````
** Hello Docker**


## write a dockerfile 
````
FROM amazonlinux
RUN  yum install httpd -y
COPY index.html /var/www/html/
CMD ["httpd", "-D", "FOREGROUND"]
````
## create docker image 
````
docker build -t imagename .
````

## create docker image and push to dockerhub 
````
docker build -t  dockerhubUsername/imagename .
````

or you can use tag command 

````
docker tag  image  registryusername/img
````
## once image is ready to push dockerhub

````
docker login -u  dockerhubusername
````
- provide password

````
docker push dockerhubUsername/imagename
````

## run container using docker run
