# Project 5 - Secure Linux Server Permissions

## Objective

Implement user-based access control on a Linux server using users, groups, file ownership, and permission management.

## Activities Performed

- Created a Linux group named `developers`.
- Created two users: `alice` and `bob`.
- Added `alice` to the `developers` group.
- Created a protected directory named `/secure-data`.
- Configured directory and file permissions using `chmod` and `chown`.
- Assigned the `developers` group ownership of the protected resources.
- Tested access permissions for both users.

## Access Validation

### Allowed Access

User `alice` was a member of the `developers` group and was able to:

- Access the protected directory
- Read the protected file
- Modify the file contents

### Denied Access

User `bob` was not a member of the `developers` group and was unable to:

- Access the protected directory
- Read the protected file

The system correctly returned a **Permission Denied** message, confirming that access restrictions were working as expected.

## Linux Commands Used

```bash
groupadd developers
useradd -m alice
useradd -m bob
usermod -aG developers alice

mkdir /secure-data
chown root:developers /secure-data
chmod 770 /secure-data

touch /secure-data/project.txt
chown root:developers /secure-data/project.txt
chmod 660 /secure-data/project.txt
```

## Result

Successfully implemented role-based access control using Linux users, groups, ownership, and file permissions. Access was granted only to authorized users while unauthorized users were denied access to protected resources.

## Deliverables

- User and group creation evidence
- Allowed access verification (`alice`)
- Denied access verification (`bob`)
- Screenshots demonstrating permission enforcement
