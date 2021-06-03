#!/bin/bash
set -eo pipefail

WALG_RELEASE=$(curl --silent "https://api.github.com/repos/wal-g/wal-g/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
WALG_URL=https://github.com/wal-g/wal-g/releases/download/${WALG_RELEASE}/wal-g-pg-ubuntu-20.04-amd64
echo "Downloading release ${WALG_RELEASE}"

rm -f wal-g
curl -s -L -o wal-g ${WALG_URL}
chmod +x ./wal-g

./wal-g --version
