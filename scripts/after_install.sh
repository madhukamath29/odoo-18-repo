#!/bin/bash
cd /home/ubuntu/odoo18

# Upgrade pip and install Python dependencies
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt