#!/bin/bash

# The fixed address for the local backend
LOCAL_BACKEND_URL="VITE_API_PATH=\"http://localhost:31100\""

# Path to the .env file
ENV_FILE="../frontend/.env.docker"

echo "Updating frontend environment for local development..."
echo "Setting API path to: $LOCAL_BACKEND_URL"

# Overwrite the file with the correct local URL
# This is simpler and more reliable than checking and replacing
echo "$LOCAL_BACKEND_URL" > "$ENV_FILE"

echo "Frontend .env file updated successfully."
