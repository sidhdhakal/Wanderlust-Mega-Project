#!/bin/bash

# The fixed address for the local backend
LOCAL_BACKEND_URL="REACT_APP_API_URL=http://localhost:5001/api"

# Path to the .env file
ENV_FILE="../frontend/.env.docker"

echo "Updating frontend environment for local development..."
echo "Setting API path to: $LOCAL_BACKEND_URL"

# Overwrite the file with the correct local URL
echo "$LOCAL_BACKEND_URL" > "$ENV_FILE"

echo "Frontend .env file updated successfully."
