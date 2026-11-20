# Project 13 - Build Image and Push to ECR

## Objective

Build a Docker image and publish it to Amazon Elastic Container Registry (ECR) for centralized container image storage and distribution.

## Project Overview

This project demonstrates the complete container image lifecycle by creating a Docker image, authenticating with Amazon ECR, pushing the image to a private container registry, and verifying successful publication.

## Services and Tools Used

- Docker
- Amazon Elastic Container Registry (ECR)
- AWS CLI
- Nginx
- Linux VM

## Project Structure

```text
Project13-Docker-ECR/
├── Dockerfile
├── index.html
├── README.md
└── ScreenShots/
```

## Application Description

A simple static HTML application was created and packaged into a Docker image using the official Nginx base image. The image was then uploaded to Amazon ECR for storage and future deployment.

## Application File

### index.html

```html
<!DOCTYPE html>
<html>
<head>
    <title>Project 13</title>
</head>
<body>
    <h1>Project 13 - Docker Image in ECR</h1>
    <p>Docker image pushed to Amazon Elastic Container Registry.</p>
</body>
</html>
```

## Dockerfile

```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

## Activities Performed

### 1. Built Docker Image

```bash
docker build -t project13-webapp .
```

### 2. Created ECR Repository

```bash
aws ecr create-repository \
--repository-name project13-webapp
```

### 3. Authenticated Docker with ECR

```bash
aws ecr get-login-password --region ap-south-1 | \
docker login \
--username AWS \
--password-stdin \
590507089733.dkr.ecr.ap-south-1.amazonaws.com
```

### 4. Tagged Docker Image

```bash
docker tag project13-webapp:latest \
590507089733.dkr.ecr.ap-south-1.amazonaws.com/project13-webapp:latest
```

### 5. Pushed Image to ECR

```bash
docker push \
590507089733.dkr.ecr.ap-south-1.amazonaws.com/project13-webapp:latest
```

## Validation

The Docker image was successfully:

- Built locally
- Tagged for Amazon ECR
- Authenticated against ECR
- Uploaded to the registry
- Assigned a valid image digest

Sample successful push output:

```text
Pushed
Pushed
Pushed
...

latest: digest: sha256:dff675...
```

The returned SHA256 digest confirms that the image was successfully stored in Amazon ECR.

## Repository Details

```text
Repository Name : project13-webapp
Region          : ap-south-1
Registry Type   : Amazon ECR Private Repository
```

## Verification Notes

The Docker image was successfully pushed to Amazon Elastic Container Registry (ECR).

The AWS training account had restricted permissions for:

```text
ecr:DescribeRepositories
```

As a result, repository details could not be viewed through the AWS Management Console.

Verification was therefore performed using:

- Successful ECR authentication
- Successful Docker image upload
- Successful image digest generation

These outputs confirm that the image was published to Amazon ECR despite console visibility restrictions.

## Screenshots

- ECR-Repository-Creation.png
- ECR-Login-Success.png
- Docker-Push-Success.png
- ECR-AccessDenied-Console.png

## Deliverable

### ECR Screenshot

Evidence captured includes:

- Repository creation
- Docker authentication with ECR
- Successful image push
- AWS Console ECR access restriction message

## Result

Successfully built a Docker image using Nginx, authenticated with Amazon Elastic Container Registry (ECR), and published the container image to the registry. Image upload was verified through successful push operations and generated image digest output.
