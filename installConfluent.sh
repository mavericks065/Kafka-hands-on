#!/bin/bash

sudo rpm --import http://packages.confluent.io/rpm/3.2/archive.key;

sudo touch /etc/yum.repos.d/confluent.repo;
sudo chmod 666 /etc/yum.repos.d/confluent.repo;
sudo echo '[Confluent.dist]
name=Confluent repository (dist)
baseurl=http://packages.confluent.io/rpm/3.2/6
gpgcheck=1
gpgkey=http://packages.confluent.io/rpm/3.2/archive.key
enabled=1

[Confluent]
name=Confluent repository
baseurl=http://packages.confluent.io/rpm/3.2
gpgcheck=1
gpgkey=http://packages.confluent.io/rpm/3.2/archive.key
enabled=1' > /etc/yum.repos.d/confluent.repo;

sudo yum clean all;
sudo yum install confluent-platform-2.11;
