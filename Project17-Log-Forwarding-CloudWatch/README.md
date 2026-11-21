# Project 17 - Log Forwarding to CloudWatch

## Objective

Implement centralized log management by forwarding application and system logs to Amazon CloudWatch Logs for monitoring and analysis.

## Services Used

- Amazon CloudWatch Logs
- AWS CLI
- Amazon CloudWatch Agent
- Ubuntu Linux

## Project Overview

This project demonstrates centralized logging using Amazon CloudWatch. A CloudWatch Log Group and Log Stream were created, and test log messages were successfully sent and verified within CloudWatch Logs.

## Activities Performed

- Installed Amazon CloudWatch Agent.
- Configured AWS credentials for CloudWatch integration.
- Created a CloudWatch Log Group.
- Created a CloudWatch Log Stream.
- Configured CloudWatch Agent settings.
- Generated test log entries.
- Sent log events to CloudWatch Logs.
- Verified successful log ingestion and retrieval.

## Log Group Details

### Log Group

```text
/parth-capstone/project17-syslog
```

### Log Stream

```text
manual-test
```

## CloudWatch Agent Configuration

```json
{
  "agent": {
    "region": "ap-south-1"
  },
  "logs": {
    "logs_collected": {
      "files": {
        "collect_list": [
          {
            "file_path": "/var/log/syslog",
            "log_group_name": "/parth-capstone/project17-syslog",
            "log_stream_name": "{hostname}"
          }
        ]
      }
    }
  }
}
```

## Commands Executed

### Verify AWS Access

```bash
aws sts get-caller-identity
```

### Verify Existing Log Groups

```bash
aws logs describe-log-groups --region ap-south-1
```

### Create Log Group

```bash
aws logs create-log-group \
--log-group-name /parth-capstone/project17-syslog \
--region ap-south-1
```

### Create Log Stream

```bash
aws logs create-log-stream \
--log-group-name /parth-capstone/project17-syslog \
--log-stream-name manual-test \
--region ap-south-1
```

### Send Test Log Event

```bash
aws logs put-log-events \
--log-group-name /parth-capstone/project17-syslog \
--log-stream-name manual-test \
--log-events timestamp=$(date +%s000),message="Project17 CloudWatch Test Message" \
--region ap-south-1
```

### Verify Log Event

```bash
aws logs get-log-events \
--log-group-name /parth-capstone/project17-syslog \
--log-stream-name manual-test \
--region ap-south-1
```

## Validation

A test log message was successfully sent to Amazon CloudWatch Logs:

```text
Project17 CloudWatch Test Message
```

The log entry was retrieved successfully from the CloudWatch Log Stream, confirming successful centralized log ingestion and retrieval.

## Screenshots

- 1.CloudWatch-Agent-Installed.png
- 2.CloudWatch-LogGroup-Created.png
- 3.Log-Event-Sent.png
- 4.CloudWatch-Log-Verification.png

## Deliverable

### CloudWatch Log Dashboard Screenshot

The CloudWatch Log Group and Log Stream were successfully created, and test log events were verified through CloudWatch Logs.

## Result

Successfully implemented centralized log management using Amazon CloudWatch Logs. Log events were generated, transmitted, stored, and retrieved successfully, demonstrating end-to-end log forwarding and monitoring capabilities.
