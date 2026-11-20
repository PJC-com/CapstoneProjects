# Project 9 - Domain Controller Setup

## Authentication Validation

The Active Directory domain was successfully configured and two domain users were created.

User existence and authentication were validated using Active Directory PowerShell commands. The domain controller successfully returned user information, confirming that Active Directory services were operational and the domain users were active.

### Users Created

- john.user
- mary.user

### Validation Commands

```powershell
Get-ADUser john.user
Get-ADUser mary.user
```

## Result

Successfully configured Active Directory Domain Services, created domain users, and validated user authentication through Active Directory management tools and PowerShell commands.
