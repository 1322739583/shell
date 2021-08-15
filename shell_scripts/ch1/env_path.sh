#!/usr/bin/env bash
#设置环境变量可以写成下面两种形式
#必须source后才会生效，而且是临时的，除非你写到.bashrc里面
#PATH="$PATH:/home/xzh/shell"
#export PATH
#或者
#export PATH="$PATH:~/shell"
# :只是个普通的符号，在这里是分隔符
export PATH="~/shell:$PATH"
#或者
#export PATH="$PATH:$HOME/shell"
#可以输出当前文件的文件名，但不可以source自身
echo "$0"
#错误
#source "$0"

