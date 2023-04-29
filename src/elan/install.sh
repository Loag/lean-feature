#!/usr/bin/env bash
set -e

# Maybe install curl
which curl > /dev/null || (apt update && apt install curl -y -qq)

curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh > elan.sh

chmod +x elan.sh
./elan.sh -y