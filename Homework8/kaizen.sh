#!/bin/bash

mkdir kaizen hello world kairat
touch kaizen/kaizen hello/kaizen world/kaizen kairat/kaizen

chmod 777 kaizen/kaizen
chmod 546 hello/kaizen
chmod 644 world/kaizen
chmod 755 kairat/kaizen

useradd tim
useradd brad
useradd eric
useradd ann
useradd jenny

groupadd devops
groupadd dev
groupadd qa

usermod -aG devops tim
usermod -aG devops brad
usermod -aG devopd eric

usermod -aG qa ann

usermod -aG dev jenny

yum install wget tree httpd
systemctl start httpd
systemctl enable httpd
~

