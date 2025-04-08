#!/bin/sh

# Configure system limits
echo "Configuring system limits..."
sysctl -w vm.max_map_count=1048576

# Create data directory with correct permissions
echo "Setting up data directory..."
mkdir -p /root/.questdb/db
chmod 777 /root/.questdb/db

# Start QuestDB
echo "Starting QuestDB..."
exec /app/bin/questdb.sh start 