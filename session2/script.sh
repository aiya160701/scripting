#!/bin/bash

echo "Installing Apache --"

## installing apache with dnf
dnf install httpd -y

## starting apache service
systemctl start httpd

## verify apache service
systemctl status httpd | grep "Active"

## enable apache 
systemctl enable httpd

## write htmls
echo "This is an automated apache server of Aiya Adil" "Hello world" "I am very excited" > /var/www/html/index.html

