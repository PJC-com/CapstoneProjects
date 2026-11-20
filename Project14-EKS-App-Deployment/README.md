# Project 14 - App Deployment using EKS

## Objective

Deploy a containerized application on Amazon Elastic Kubernetes Service (EKS) and expose it publicly using a Kubernetes LoadBalancer service.

## Services Used

- Amazon EKS
- Kubernetes
- Amazon ECR
- Docker
- AWS Load Balancer

## Activities Performed

- Connected to the EKS cluster.
- Configured kubectl access to the cluster.
- Created a Kubernetes Deployment with multiple replicas.
- Deployed a Docker image stored in Amazon ECR.
- Created a Kubernetes LoadBalancer Service.
- Obtained a public AWS Load Balancer endpoint.
- Verified application accessibility through the public URL.

## Kubernetes Resources

### Deployment

```text
project14-webapp
```

### Service

```text
project14-webapp-service
```

### Service Type

```text
LoadBalancer
```

## Deployment Files

### deployment.yaml

Created a Kubernetes Deployment that pulls the Docker image from Amazon ECR and runs multiple application replicas.

### service.yaml

Created a LoadBalancer Service that exposes the application externally through an AWS Elastic Load Balancer.

## Validation Commands

```bash
kubectl get deployments
```

```bash
kubectl get pods
```

```bash
kubectl get svc
```

## Validation Result

The application was successfully deployed to Amazon EKS and exposed through an external AWS Load Balancer.

The public endpoint displayed the application page:

```text
Docker Image Published to ECR
```

confirming successful deployment and public accessibility.

## Screenshots

- EKS-Nodes-Ready.png
- EKS-Deployment-Running.png
- EKS-LoadBalancer-Service.png
- Public-Access-Screenshot.png

## Result

Successfully deployed a containerized application on Amazon EKS, exposed it using a Kubernetes LoadBalancer service, and accessed the application through a public AWS endpoint.
