#!/bin/bash
# set -xueo pipefail

# echo $1
# echo $2

echo "$@"
echo "main pid is $$"

# . 表示引入文件或者source
# . ./subpid.sh or source ./subpid.sh

. ./subpid.sh &
# 等待后台进程完成
wait $!
echo "last bg pid $!"
echo $!
