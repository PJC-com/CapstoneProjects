# Project 3 - EC2 State Monitoring with CloudWatch Alarm

## Objective
Monitor EC2 CPU utilization using Amazon CloudWatch and trigger an alarm on high CPU usage.

## AWS Services Used
- EC2
- CloudWatch
- CloudWatch Alarm
- Terraform

## Resources Created
- EC2 Instance
- CloudWatch CPU Alarm

## Alarm Configuration
- Metric: CPUUtilization
- Threshold: 70%
- Evaluation Period: 2 datapoints in 2 minutes

## Result
Successfully created a CloudWatch alarm that monitored EC2 CPU utilization and entered ALARM state when the threshold was exceeded.
