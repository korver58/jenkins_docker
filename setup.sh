#!/bin/bash
set -euo pipefail

SCRIPT_DIR=$(cd $(dirname $0);pwd)
cd ${SCRIPT_DIR}

# 権限を正しく付与しないとdockerにmountできない
# The jenkins user in the container has UID 1000.
# This ensures that the mounted directory is owned by that user.
mkdir -p jenkins_home
sudo chown -R 1000:1000 jenkins_home
sudo chmod -R u=rwx,g=rx,o=rx jenkins_home
