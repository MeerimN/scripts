#!/bin/bash

# Create a timestamped log file
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
log_file="service_status_$timestamp.log"

# Define the list of services
services=("apache2" "mysql" "ssh" "cron")

# Loop through each service and check its status
for service in "${services[@]}"
do
    if systemctl is-active --quiet "$service"; then
        echo "$service is running" >> "$log_file"
    else
        echo "$service is down" >> "$log_file"
    fi
done