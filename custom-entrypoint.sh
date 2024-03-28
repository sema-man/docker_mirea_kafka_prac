#!/bin/bash
set -e

# Define the path to the configuration file inside the container
CONFIG_PATH="/var/lib/postgresql/data/postgresql.conf"

# Wait for the PostgreSQL initialization process to create the configuration file
while [ ! -f "$CONFIG_PATH" ]; do
    sleep 1
done

# Replace the default postgresql.conf with the custom one
cp /custom-config/postgresql.conf "$CONFIG_PATH"

# Call the original entrypoint script with the command to start PostgreSQL
exec docker-entrypoint.sh postgres
