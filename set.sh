#!/bin/bash

# debug，另外一种写法，set -o xtrace
# set -x

# 忽略不存在的变量，不会忽略，会报错截止，另外一种写法，-o nounset
# set -u
echo $a
echo bar

# 遇到错误就停止往下执行，另外一种写法，-o errexit；-e 不适合用管道命令，set -o pipefail可以解决管道问题
# 管道命令，就是多个子命令通过管道运算符（｜）组合成为一个大的命令。Bash 会把最后一个子命令的返回值，作为整个命令的返回值
# 也就是说，只要最后一个子命令不失败，管道命令总是会执行成功，因此它后面命令依然会执行
# set -e
function setfun() {
    echo $(expr $1 + 1)
    echo $(expr $2 + 2)
    return $(expr $1 + $2)
}
setfun 1 2
# set -e 会这里运行为止，非0就是false

# 总结
# 一般上面四个参数一起使用，set -euxo pipefail
