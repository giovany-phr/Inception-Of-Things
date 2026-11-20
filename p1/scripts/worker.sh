#!/bin/bash

# Load environment variables

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"

if [[ ! -f "$ENV_FILE" ]]; then
    echo "${RED}Error: .env file not found!${ENDCOLOR}"
    exit 1
fi

source "$ENV_FILE"

# Check environment variables are not empty

if [[ -z "${K3S_URL}" ]] || [[ -z "${K3S_TOKEN}" ]] ; then
    echo -e "${RED}Missing environment variables${ENDCOLOR}"
    exit 1
fi

# k3s installed in Worker in agent mode
# This node will execute applications and containers

if curl -sfL https://get.k3s.io | K3S_URL="$K3S_URL" K3S_TOKEN="$K3S_TOKEN" sh -; then
    echo -e "${GREEN}K3s worker node successfully installed!${ENDCOLOR}"
else
    echo -e "${RED}K3s worker installation failed!${ENDCOLOR}"
    exit 1
fi