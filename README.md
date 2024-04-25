# AWS with Ansible

## Introduction/Function
This repository contains Ansible playbooks and scripts designed to configure and manage AWS services. The goal is to automate the provisioning and management of AWS resources using Ansible, an open-source automation tool.

The configuration contains ansible roles and play book to provision an AWS linux ec2 instance, install Apache httpd webserver and configure the webserver to display certain content in the webpage. 
There are two roles,
- security-grp-setup: This handle the configuration setup of the security group. It has two rules, SSH port from my local pc and http on port 80
- ec2-server-setup: This one contains the confuration of the provisioning of the ec2 instance and the configuration of the webserver.

## Features
- Provision AWS infrastructure using Ansible playbooks.
- Configure AWS services such as EC2, S3, RDS, etc.
- Integrate with CI/CD pipelines for automated deployment.

## Prerequisites
Before you begin, ensure you have the following:
- An AWS account with the necessary permissions.
- Ansible installed on your local machine or CI/CD environment.
- AWS CLI configured with access and secret keys encrypted locally using ansibl.

## Installation
To use the playbooks in this repository, follow these steps:
1. Clone the repository:
```git clone https://github.com/CourageOI/ansible-aws-webserver.git cd ansible-aws-webserver```

2. Install required Ansible:
To run the ansible make sure you install, python, pip, boto3, ansible.
when you install ansible it automatically installs the various collections and modules

You can check out ansible website to see how to install setup the Ansible
## Configuration
in the role/vars dirctory there is where you specify the access key and secret for your aws account. it is a secret which you encrypt using ansible-vault. 
Use this command to create encrypt the data as below:
```ansible-vault encrypt ec2-server-setup/vars/secrets.yml```


## Usage
To run an Ansible playbook, use the following command:

```ansible-playbook playbook.yml --ask-vault-pass```





