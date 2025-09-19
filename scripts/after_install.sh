#!/bin/bash
cd /home/ubuntu/odoo18

# Install venv package if not already installed
sudo apt update -y
sudo apt install -y python3-venv

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip inside venv
pip install --upgrade pip

# Install Python dependencies inside venv
pip install -r requirements.txt
