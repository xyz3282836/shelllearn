#!/bin/bash

# 接受输入变量
# read name
# echo $name

echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
# 原样输出 $name\"
echo '$name\"'

# 执行子命令；优先使用$()
echo $(date)
# echo `date`

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then
    echo "true"
fi

# $(())或者$[]执行运算，优先使用$(())；注意和$()区别
# 如果使用 ((...)) 作为判断语句，大于和小于可以直接使用 > 和 <
a=1
b=2
if ((a >= b)); then
    echo "a is bigger"
else
    echo "b is bigger"
fi


