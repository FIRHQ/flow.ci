#!/bin/bash

set -e

# VARS
DEPLOY_TIME=`date +%Y%m%d%H%M%S`
REMOTE_DIR="/var/www/flow-doc"
RELEASE_DIR="${REMOTE_DIR}/release"
DEPLOY_DIR="${RELEASE_DIR}/${DEPLOY_TIME}"
LATEST_DIR="${REMOTE_DIR}/latest"

TARGET=$1
PORT=22

echo "########## Deploy to ${TARGET} ##########"

# BUILD & Choose server

if [ ! -z ${TARGET} ]; then
  USER=deploy

  if [ "${TARGET}" == "local" ]; then
    # 从内部部署
    HOST="127.0.0.1"
  elif [ "${TARGET}" == "prod" ]; then
    # 从外部部署
    HOST="54.223.164.188"
  fi;
else
  TARGET=prod
  USER=deploy
  HOST="54.223.164.188"
fi;

# Generate static file
gitbook build docs dist
echo "########## Build success ##########"


# DEPLOY
ssh ${USER}@${HOST} -p ${PORT} "mkdir -p ${DEPLOY_DIR}"

scp -P ${PORT}  -rv ./dist/* ${USER}@${HOST}:${DEPLOY_DIR}
ssh ${USER}@${HOST} -p ${PORT}  <<EOF
if [ -d ${LATEST_DIR} ]; then
   rm -rf ${LATEST_DIR}
fi
ln -s ${DEPLOY_DIR} ${LATEST_DIR}
ls ${RELEASE_DIR} | grep "^[0-9]\{1,\}$" | sort -r | sed -n '6,\$p' | awk '{cmd="rm -rf ${RELEASE_DIR}/"$1; system(cmd)}'
exit
EOF
echo "########## Deploy $HOST  success ##########"

exit 0