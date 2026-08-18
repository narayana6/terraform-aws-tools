#!/bin/bash
#curl -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
curl -L -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
#yum install fontconfig java-17-openjdk jenkins -y
dnf install -y java-21-openjdk fontconfig jenkins
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins
