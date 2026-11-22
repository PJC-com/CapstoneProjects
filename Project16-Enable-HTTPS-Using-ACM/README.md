# Project 16 - Enable HTTPS using ACM

## Objective

Secure web application access using HTTPS by configuring an Application Load Balancer with an ACM certificate.

## Services Used

- Amazon EC2
- Application Load Balancer (ALB)
- AWS Certificate Manager (ACM)
- Target Groups
- Security Groups

## Project Overview

This project demonstrates secure web access using HTTPS. A custom EC2 web server was deployed behind an Application Load Balancer. An ACM certificate was attached to an HTTPS listener, and HTTP access was disabled by exposing only HTTPS traffic.

## Architecture

```text
User
  |
HTTPS (443)
  |
Application Load Balancer
  |
Target Group
  |
EC2 Web Server
```

## Resources Created

### EC2 Instance

```text
parth-project16-web
```

### Target Group

```text
parth-project16-tg
```

### Application Load Balancer

```text
parth-project16-alb
```

### Security Group

```text
parth-project16-https-sg
```

## Activities Performed

- Created a Security Group for HTTPS traffic.
- Launched an EC2 web server.
- Installed and configured Apache Web Server.
- Created a Target Group.
- Registered the EC2 instance with the Target Group.
- Created an Application Load Balancer.
- Attached an ACM certificate.
- Configured an HTTPS listener on port 443.
- Verified target health checks.
- Confirmed HTTPS access through the ALB DNS endpoint.
- Verified HTTP was not configured.

## ACM Certificate

```text
*.ap-south-1.elb.amazonaw*.com
```

## HTTPS Listener Config*ration

### Protocol

```text
*TTPS
```

### Port

```text
443
``*

### SSL Policy

```text
ELBSecur*tyPolicy-2016-08
```

## Validatio*

### Verify HTTPS Listener

```ba*h
aws elbv2 describe-listeners
```*
Confirmed:

```*ext
443 HTTPS
```

### Verify Targ*t Health

```bash
aws elbv2 descri*e-target-health
```

*esult:

```text
healthy
```

### V*rify Secure Access

Opened:

```te*t
https://parth-project16-alb-1337*43659.ap-south-1.elb.amazonaws.com*```

and successfully accessed the*application over HTTPS.

## Screen*hots

- 1.HTTPS-Listener-Configure*.png
- 2.HTTP-Blocked.png
- 3.HTTP*-Access-Verified.png

## Deliverab*e

### HTTPS Screenshot

Successfu*ly verified secure HTTPS access th*ough an Application Load Balancer *sing an ACM certificate.

## Resul*

Successfully secured web applica*ion access by configuring an Appli*ation Load Balancer with an HTTPS *istener and ACM certificate while *reventing unsecured HTTP access.
`*
