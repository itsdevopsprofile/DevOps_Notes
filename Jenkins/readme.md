



# jenkins installation steps

````
sudo apt update
sudo apt install fontconfig openjdk-21-jre  -y
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
````
````
jenkins --version
````


![image](https://github.com/user-attachments/assets/59c4c6f6-279a-4da7-94b8-6b15c6285380)

# jenkins initial password
````
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
````

