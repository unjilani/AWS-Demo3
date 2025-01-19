#!/bin/bash
# Install Apache if not already installed
if ! command -v apache2 >/dev/null 2>&1; then
  echo "Installing Apache..."
  apt-get update
  apt-get install apache2 -y
fi

# Ensure the Apache service is running
echo "Starting Apache server..."
service apache2 start

# Ensure Apache runs on system boot
systemctl enable apache2

echo "Deployment complete. Application is running!"
