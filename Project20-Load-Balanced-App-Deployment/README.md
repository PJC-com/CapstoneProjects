# Project 20 - Load Balanced App Deployment

## Objective

Deploy a highly available web application using multiple Amazon EC2 instances behind an Application Load Balancer (ALB) and validate load balancer health checks.

## Services Used

- Amazon EC2
- Application Load Balancer (ALB)
- Target Groups
- Security Groups
- Amazon VPC

## Project Overview

This project demonstrates how to improve application availability and scalability using an Application Load Balancer. Two web servers were deployed across different Availability Zones and registered with a target group. Health checks were configured to ensure only healthy instances receive traffic.

## Architecture

```text
Users
   |
   v
Application Load Balancer
   |
   +------------------+
   |                  |
   v                  v
EC2 Web Server 1   EC2 Web Server 2
```

## Infrastructure Configuration

### VPC

```text
vpc-03389c41f719f68ac
```

### Availability Zones

```text
ap-south-1a
ap-south-1b
```

### Security Group

```text
parth-project20-sg
```

### Target Group

```text
parth-project20-tg
```

### Application Load Balancer

```text
parth-project20-alb
```

## Activities Performed

1. Created a security group allowing HTTP traffic on port 80.
2. Launched two EC2 instances in separate Availability Zones.
3. Installed and configured Apache Web Server using user data scripts.
4. Created a Target Group for routing traffic.
5. Registered both EC2 instances with the Target Group.
6. Configured HTTP health checks.
7. Created an Internet-facing Application Load Balancer.
8. Associated the Target Group with the Load Balancer listener.
9. Verified target health status.
10. Validated application access through the ALB DNS endpoint.

## EC2 Web Servers

### Web Server 1

```html
<h1>Parth Project20 Web Server 1</h1>
```

### Web Server 2

```html
<h1>Parth Project20 Web Server 2</h1>
```

## Health Check Configuration

### Protocol

```text
HTTP
```

### Port

```text
80
```

### Path

```text
/
```

### Success Code

```text
200
```

### Interval

```text
30 Seconds
```

## Validation

### Verify Instance Deployment

```bash
aws ec2 describe-instances \
--filters "Name=tag:Name,Values=parth-project20-web1,parth-project20-web2"
```

### Verify Target Health

```text
Healthy Targets: 2
Unhealthy Targets: 0
```

### Verify Load Balancer Accessibility

Access the Application Load Balancer DNS name:

```text
http://<alb-dns-name>
```

Expected output:

```text
Parth Project20 Web Server 1
```

or

```text
Parth Project20 Web Server 2
```

depending on the instance serving the request.

## Screenshots

- 1.Security-Group-Created.png
- 2.WebServer1-Launched.png
- 3.WebServer2-Launched.png
- 4.Target-Group-Created.png
- 5.ALB-Created.png
- 6.Healthy-Targets.png
- 7.Load-Balancing-Working.png

## Deliverable

### Load Balancing Screenshot

The browser successfully accessed the application through the Application Load Balancer DNS endpoint, demonstrating traffic routing to healthy backend web servers.

## Result

Successfully deployed two EC2 web servers behind an Application Load Balancer, configured health checks using a Target Group, and verified successful load-balanced application access through the ALB endpoint.
