#!/bin/bash
set -e  # Stop if any command fails

cd /home/ubuntu/odoo18 || exit 1

# Install Python venv if not available
sudo apt update -y
sudo apt install -y python3-venv python3-pip --no-install-recommends

# Create virtual environment if not exists
[ ! -d "venv" ] && python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install dependencies quietly and clean cache to save space
pip install --no-cache-dir --upgrade pip
[ -f "requirements.txt" ] && pip install --no-cache-dir -r requirements.txt

# Deactivate virtual environment
deactivate

# Remove apt cache to free space
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
