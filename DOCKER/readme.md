






## Docker installation(amazon linux)

````
sudo yum update
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
newgrp docker
sudo chmod 777 /var/run/docker.sock
````

---

## Docker installation(ubuntu)

````
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
````

---

## Docker Basic Commands

````
docker --version
````
````
docker pull nginx
````
````
docker images
````
````
docker run -itd --name c1  -p 80:80 nginx
````
````
docker ps
````
````
docker exec -it c1 /bin/bash
````
note: for logout use exit command

````
docker inspect c1
````
````
docker logs c1
````

---
<img width="1257" height="616" alt="image" src="https://github.com/user-attachments/assets/672c707d-f324-494c-8f3c-d96fb95a7cef" />
<img width="1232" height="645" alt="image" src="https://github.com/user-attachments/assets/913a6e77-0f42-4ced-9231-efefdf8f215a" />
