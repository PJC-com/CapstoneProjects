# Project 24 - Manual Chaos Test

## Objective

Validate system recovery procedures by intentionally stopping a running service, restoring it, and documenting the recovery process.

## Services Used

- Ubuntu Linux
- Systemd
- Apache HTTP Server

## Project Overview

This project demonstrates a basic chaos engineering exercise by intentionally causing a service outage, validating service failure detection, performing recovery actions, and documenting the incident response process.

## Tested Service

```text
apache2
```

## Activities Performed

- Verified Apache service status.
- Simulated service failure.
- Confirmed service outage.
- Restarted the service.
- Verified successful recovery.
- Documented incident details.

## Failure Simulation

```bash
sudo systemctl stop apache2
```

## Verification

```bash
systemctl status apache2
```

Observed:

```text
inactive (dead)
```

## Recovery Action

```bash
sudo systemctl start apache2
```

## Post-Recovery Verification

```bash
systemctl status apache2
```

Observed:

```text
active (running)
```

## Incident Notes

The Apache service was intentionally stopped to simulate failure conditions.

Recovery was performed by restarting the service and confirming successful restoration of normal operations.

## Screenshots

- 1.Service-Running.png
- 2.Service-Stopped.png
- 3.Service-Recovered.png
- 4.Incident-Notes.png

## Deliverable

### Incident Notes

Documented the outage simulation, impact assessment, recovery action, and service verification process.

## Result

Successfully simulated a service failure, restored normal operations, and recorded the incident recovery procedure.
