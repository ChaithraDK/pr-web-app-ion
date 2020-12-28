#!/bin/bash
sudo su
cd
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install libtomcat9-java -y
sudo apt-get install tomcat9 tomcat9-admin tomcat9-common -y
cd /var/lib/tomcat9/webapps/
sudo wget https://app-ion-bucket.s3.ap-south-1.amazonaws.com/ion-web-app.war
sudo systemctl start tomcat9
