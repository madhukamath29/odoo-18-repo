#!/bin/bash
set -e  # Exit on any error

cd /home/ubuntu/odoo18 || exit 1

# Ensure ubuntu user owns the project folder
sudo chown -R ubuntu:ubuntu /home/ubuntu/odoo18

# Install Python venv & pip if not available
sudo apt update -y
sudo apt install -y python3-venv python3-pip --no-install-recommends

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Upgrade pip and install dependencies
pip install --no-cache-dir --upgrade pip
if [ -f "requirements.txt" ]; then
    pip install --no-cache-dir -r requirements.txt
fi

# Deactivate venv
deactivate

# Clean up apt cache to save space
sudo apt clean
sudo rm -rf /var/lib/apt/lists/*
