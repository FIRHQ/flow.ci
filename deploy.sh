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

# insert build info
FMT="%Y-%m-%dT%H:%M:%SZ"
currDate=`date -u +"$FMT"`
if [[ `uname` == 'Darwin' ]]; then
  ts=$(date -j -f "$FMT" "${currDate}" "+%s") 
else
  ts=$(date --date="${currDate}" +"%s")
fi

branch=$(git rev-parse --abbrev-ref HEAD)
if [ -n "$FLOW_GIT_BRANCH" ] ; then
  branch=$FLOW_GIT_BRANCH
fi
commit=$(git rev-parse --short HEAD)

sed -i '/author/a\ \<meta name="version" content="production|COMMIT-TAG"\>' ./dist/index.html
sed -i '/author/a\ \<meta http-equiv="last-modified" content="UPDATE-TIME"\>' ./dist/index.html

sed -i "s/COMMIT-TAG/${branch}-${commit}/g" ./dist/index.html
sed -i "s/UPDATE-TIME/${currDate}/g" ./dist/index.html
# sed -i  's/輸入並搜尋/输入并搜索/g' ./dist/zh/index.html


# DEPLOY
echo "########## Deploy to ${TARGET} ##########"
ssh ${USER}@${HOST} -p ${PORT} "mkdir -p ${DEPLOY_DIR}"
ssh ${USER}@${HOST} -p ${PORT} "rm -rfv ${LATEST_DIR}"

scp -P ${PORT}  -rv ./dist/* ${USER}@${HOST}:${DEPLOY_DIR}
ssh ${USER}@${HOST} -p ${PORT} bash -x <<EOF
ln -s ${DEPLOY_DIR} ${LATEST_DIR}
# ls ${RELEASE_DIR} | grep "^[0-9]\{1,\}$" | sort -r | sed -n '6,\$p' | awk '{cmd="rm -rf ${RELEASE_DIR}/"$1; system(cmd)}'
exit
EOF
echo "########## Deploy $HOST  success ##########"

exit 0
