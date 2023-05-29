#!/bin/bash

for file in ~/.config/nvim/*; do
    echo "file is ${file}"
done

wodeint=5
echo $wodeint

wodestr="haha"
echo $wodestr

unset wodestr
# echo "${wodestr:?"not definited var"}"
echo "${wodestr:-"default var"}"

# echo '$wodeint' 无法解析变量；建议加引号
echo "$wodeint"

mergestr1='hello '$wodestr' end'
mergestr2="hello "$wodestr" end"
echo "$mergestr1" "$mergestr2"

strtext="ab人cd我"
echo ${#strtext[0]}
echo ${strtext:1:2}
# echo `expr index "$strtext" b` mac没有此命令

rtxt="only read"
readonly rtxt
rtxt="ja"
echo $rtxt
# unset rtxt

# array
arrs=(1 2 'wo' "red" "四个" "*")
arrs[8]="iam8"
echo ${arrs[8]}
# 获取所有元素；${arrs[@]} 最好加双引号；优先使用@
# echo ${arrs[*]} 输出：1 2 wo red 四个 README.md test.sh iam8
echo "${arrs[@]}"
# 获取某个元素的字符数
echo ${#arrs[4]}
# 获取元素的个数；优先使用@
# echo ${#arrs[*]}
echo ${#arrs[@]}

# 获取执行参数
echo $1
# 参数个数
echo $#
# 当前进程id
echo $$
# 获取所有参数；$@ 最好加双引号；优先使用@
# echo $*
echo "$@"
# 显示Shell使用的当前选项，与set命令功能相同
echo $-
# 显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误；最好设置成变量再打印
ret=$?
echo $ret

# 关联数组，就是map；建议使用字符串设置key
declare -a wodemap
wodemap["age"]=9
wodemap["name"]=rz
wodemap["haha"]="app"
# wodemap[txt]=tt
wodemap[1]="nide"

echo ${wodemap["name"]}