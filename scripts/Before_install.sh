#!/bin/bash
# Update system packages
sudo apt update -y
sudo apt upgrade -y

# Install Python3, pip, git, wget, and build essentials
sudo apt install -y python3 python3-pip git wget build-essential libxslt1-dev libzip-dev libldap2-dev libsasl2-dev python3-dev libjpeg-dev libpq-dev

# Install PostgreSQL client (for RDS or local DB)
sudo apt install -y postgresql-client