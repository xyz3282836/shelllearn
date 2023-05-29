#!/bin/bash

function name1() {
    echo $1
    echo $2
    return 12
}
name1 1 2
# 一般无返回值函数执行返回0
echo $?