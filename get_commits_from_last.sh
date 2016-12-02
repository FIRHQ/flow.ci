#!/usr/bin/env bash

# usage: sh get_commits_from_last.sh [lyon]
#       如果没有lyon参数 会获取线上的commit_id

# 会export 2个环境变量:
#    DEPLOY_DIFF 与上次部署的时间差
#    DEPLOY_LOG  与上次部署的变化

set -e

STAGE="docs"

URL="${STAGE}.flow.ci"
HTML=`eval curl -sS ${URL}`

LAST_ID=`echo $HTML | awk 'match($0, /-[0-9a-f]{7}/) { print substr( $0, RSTART+1, RLENGTH-1 )}'`
LAST_TIME=`echo $HTML | awk 'match($0, /[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}/) { print substr( $0, RSTART, RLENGTH )}'`"Z"


# ------------
FMT="%Y-%m-%dT%H:%M:%SZ"

currDate=`date -u +"$FMT"`

if [[ `uname` == 'Darwin' ]]; then
  ts=$(date -j -f "$FMT" "${currDate}" "+%s")
  ts2=$(date -j -f "$FMT" "${LAST_TIME}" "+%s")
else
  ts=$(date --date="${currDate}" +"%s")
  ts2=$(date --date="${LAST_TIME}" +"%s")
fi

(( diff=(ts-ts2)/60 ))

export DEPLOY_DIFF=$diff

echo "Last $1 version : $LAST_ID @ ${LAST_TIME} (${DEPLOY_DIFF} minutes ago)"
echo "-----------------------------------------"

export DEPLOY_LOG=`git log --oneline $LAST_ID..HEAD`

# -------------

echo "${DEPLOY_LOG}"