#!/bin/bash
# set -xueo pipefail

echo $1
echo $2

echo "$@"
echo "main pid is $$"

# . 表示引入文件
# . ./subpid.sh

./subpid.sh &
# 等待后台进程完成
wait $!
echo "last bg pid"
echo $!
