# Ansible Hands-On Project with AWS and Terraform

This repository contains a **hands-on project for learning Ansible in a practical cloud environment** using **AWS infrastructure provisioned through Terraform**.

The goal of this project is to build real understanding of:

- Infrastructure provisioning using Terraform  
- Configuration management using Ansible  
- AWS resource setup and automation  
- Control node and managed node architecture in Ansible  

---

# Project Overview

In this project, **AWS is used as the learning environment**, and the infrastructure is created using **Infrastructure as Code (IaC)** with Terraform.

Terraform provisions core AWS resources such as:

- VPC  
- Subnets   
- Security Groups  
- EC2 Instances  
- Other supporting resources required for practical learning  

This helps in understanding how cloud infrastructure is built before configuration management begins.

To learn more about the Terraform part of this setup, check this article:

[Read here](https://medium.com/@abhinavnegi101/provisioning-aws-infrastructure-using-terraform-beginner-friendly-guide-182262f6cac5)

---

# Ansible Learning Focus

After infrastructure provisioning, the project moves to **Ansible configuration management**.

Here we explore:

- Installing Ansible on an AWS EC2 instance  
- Understanding Ansible control node and managed node architecture  
- Establishing SSH-based communication between nodes  
- And more

Checkout: [Medium](https://medium.com/@abhinavnegi101/understanding-ansible-before-writing-your-first-playbook-d1a3ba081d27)

The project is designed to help build practical confidence in how Ansible works in real environments.

---

# Learning Outcome

By completing this project, you will understand how:

- Terraform and Ansible complement each other  
- Infrastructure provisioning and configuration management are separated in DevOps workflows  
- AWS resources can be automated from scratch  
- Real-world automation pipelines begin from infrastructure and move toward configuration  

---

# Why This Project Matters

In many real DevOps environments:

- Terraform creates infrastructure  
- Ansible configures infrastructure  

Understanding both together gives strong practical foundation for cloud automation.

---