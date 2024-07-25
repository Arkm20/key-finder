#!/bin/bash

# Exit on error
set -e

# Print each command before executing it
set -x

# Create a virtual environment
python -m venv venv

# Activate the virtual environment
source venv/bin/activate

pip install --upgrade wheel

# Install dependencies
pip install -r requirements.txt

# Install Playwright dependencies
playwright install-deps

# Install Playwright browsers
playwright install

# Print success message
echo "Build complete. Dependencies installed."
