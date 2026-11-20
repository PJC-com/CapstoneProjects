# Project 10 - Internal DNS Setup

## Objective

Configure an internal DNS server and access a server using a hostname instead of an IP address.

## Activities Performed

- Verified DNS Server installation.
- Opened DNS Manager.
- Created an A Record for a web server.
- Configured hostname mapping to an internal IP address.
- Verified hostname resolution using nslookup.
- Verified connectivity using ping.

## DNS Record

Hostname:

```text
webserver.capstoneproject9.local
```

IP Address:

```text
10.5.2.69
```

## Validation Commands

```powershell
nslookup webserver.capstoneproject9.local
```

```powershell
ping webserver.capstoneproject9.local
```

## Result

Successfully configured an internal DNS A Record and verified hostname resolution. The webserver hostname resolved correctly to the configured IP address using DNS.
