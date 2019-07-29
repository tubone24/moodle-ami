#!/usr/bin/env bash
export PATH=$PATH:/usr/local/bin/

HOST_IP=$1
PORT=$2
SSH_KEY=$3
HOST=$4
ENV=$5

env TARGET_SSH_KEY="${SSH_KEY}" TARGET_HOST_IP=${HOST_IP} TARGET_PORT=${PORT} TARGET_ENV=${ENV} USER=aws-training bundle exec rake spec:${HOST} | tee serverspec.tmp

result=`cat serverspec.tmp | grep "0 failures" | wc -l`

if [ $result -ne 1 ]; then
  echo -e "\e[31mServerspec testing is failure!!\e[m"
  exit 1
else
  echo -e "\e[32mServerspec testing is success!!\e[m"
  rm -rf /tmp/serverspec
  exit 0
fi

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
