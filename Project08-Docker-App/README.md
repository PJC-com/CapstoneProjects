# Project 8 - Build and Run Docker App Locally

## Objective

Build a simple containerized application and run it locally using Docker.

## Project Overview

This project demonstrates the fundamentals of containerization by creating a custom Docker image, running it as a container, and verifying that the application is accessible locally.

## Technologies Used

- Docker
- Nginx
- HTML

## Project Files

```text
Project08-Docker-App/
├── Dockerfile
├── index.html
└── README.md
```

## Application Description

A simple static web page was created and deployed inside an Nginx container. The page is served through Docker and accessed locally through a mapped port.

## Dockerfile

The application uses the official Nginx image and copies a custom web page into the default Nginx web directory.

```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

## Commands Executed

### Build Docker Image

```bash
docker build -t project8-webapp .
```

### Verify Image Creation

```bash
docker images
```

### Run Container

```bash
docker run -d -p 8080:80 --name project8-container project8-webapp
```

### Verify Running Container

```bash
docker ps
```

### Test Application

```bash
curl http://localhost:8080
```

## Validation

The application was successfully accessed from the running Docker container using:

```text
http://localhost:8080
```

The custom webpage was displayed as expected, confirming successful image creation and container deployment.

## Deliverables

- Dockerfile
- Running Docker Container
- Application Verification Screenshot

## Result

Successfully built a Docker image, deployed a container locally, and verified application accessibility using Docker and Nginx. This project demonstrated the complete workflow of building, running, and testing a containerized application.
