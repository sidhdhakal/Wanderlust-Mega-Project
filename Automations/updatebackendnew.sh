#!/bin/bash

# The fixed address for the local frontend
LOCAL_FRONTEND_URL="FRONTEND_URL=\"http://localhost:5173\""

# Path to the .env file
ENV_FILE="../backend/.env.docker"

echo "Updating backend environment for local development..."
echo "Setting frontend URL to: $LOCAL_FRONTEND_URL"

# Use sed to replace only the specific line, in case other variables are in the file
if [ -f "$ENV_FILE" ]; then
    sed -i -e "s|^FRONTEND_URL.*|$LOCAL_FRONTEND_URL|" "$ENV_FILE"
    echo "Backend .env file updated successfully."
else
    echo "ERROR: Backend .env file not found at $ENV_FILE."
    # Optionally, create it if it's missing
    # echo "$LOCAL_FRONTEND_URL" > "$ENV_FILE"
fi
