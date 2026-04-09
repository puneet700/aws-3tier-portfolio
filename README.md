Deployment of 3-Tier Applications Using AWS Services [cite: 4]

📌 Overview
This project successfully demonstrates the deployment of a Highly Available 3-Tier Architecture on AWS. It utilizes industry best practices, secure networking, and scalable infrastructure components to run a full-stack application.

🏗️ Architecture
The infrastructure is strictly segregated into three distinct layers:
**Web Tier:** Handles incoming user requests.
**Application Tier:** Processes core application logic.
**Database Tier:** Stores application data securely in a private network.
**Load Balancing:** Utilizes both Internal and External Load Balancers to provide scalability and fault tolerance.

🛠️ Technology Stack
**Networking:** Custom Virtual Private Cloud (VPC), Public and Private Subnets, Internet Gateway, NAT Gateway, and custom Route Tables.
**Compute:** Amazon EC2 instances provisioned for both the Application and Web tiers.
**Database:** Amazon RDS running the MySQL engine, deployed within a private subnet.
**Storage & Security:** Amazon S3 for application code storage and IAM roles configured with `AmazonS3ReadOnlyAccess` and `AmazonEC2RoleforSSM`.
**Web & App Servers:** NGINX serving a React frontend, with the backend environment utilizing Node.js managed by the PM2 daemon.
**DNS & Domain:** Domain routing configured using Namecheap, Amazon Route 53, and Elastic IPs.

## 🚀 Implementation Steps
1.  **VPC Creation:** Created a custom VPC foundation with enabled DNS Hostnames and Resolution. 
2.  **S3 & IAM Setup:** Established an S3 bucket to store web and app tier code, and attached necessary IAM roles to all EC2 instances.
3.  **Database Configuration:** Launched a MySQL RDS instance restricting security group access to only allow traffic from the App Tier.
4.  **Application Tier Setup:** Downloaded application code from S3, configured the database connection, installed Node.js/PM2, and placed the tier behind an Internal Load Balancer.
5.  **Web Tier Setup:** Configured an EC2 instance with NGINX, executed a React build, and routed external traffic through an External Load Balancer.
6. **SSL & Domain Mapping:** Finalized the deployment by mapping a custom domain using Route 53 Hosted Zones and an Elastic IP.

***

**Pro-Tip:** Your document mentions an architecture diagram image (`3TierArch.png`). Be sure to embed that image right at the top of your actual GitHub README under the "Overview" section.

Would you like to write a section detailing a specific technical challenge you overcame during this build, or should we explore adding an "Infrastructure as Code" element (like a Terraform script) to the repository to make this portfolio piece even stronger?
