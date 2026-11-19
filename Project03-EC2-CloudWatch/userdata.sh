#!/bin/bash

dnf update -y
dnf install -y stress

echo "Instance Ready" > /home/ec2-user/status.txt
