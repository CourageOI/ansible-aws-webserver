#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Get the local IP address
local_ip=$(hostname -I | awk '{print $1}')

# Create a simple index.html file with the IP address
echo "<html><head><title>My Web Server</title></head><body><h1>Hello from EC2 Instance!</h1><p>Local IP: $local_ip</p></body></html>" > /var/www/html/index.html
