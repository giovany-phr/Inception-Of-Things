#!/bin/bash

# Load environment variables

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env"

if [[ ! -f "$ENV_FILE" ]]; then
    echo "${RED}Error: .env file not found!${ENDCOLOR}"
    exit 1
fi

source "$ENV_FILE"

# k3s installed in Server in controller mode
# This node will control and orchestrate the cluster by scheduling tasks

if curl -sfL https://get.k3s.io | sh -; then
    echo -e "${GREEN}K3s server node successfully installed!${ENDCOLOR}"
else
    echo -e "${RED}K3s server installation failed!${ENDCOLOR}"
    exit 1
fi