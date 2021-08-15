#!/usr/bin/env bash
#标准输入输出
##################################################
#1.重定向>和>>

# >符号会替换文本的原来全部内容
echo "line1" > std_io.txt
echo "line2" > std_io.txt

# >>会追加内容到原来的文本末尾
echo "line3" >> std_io.txt
cat std_io.txt
##################################################
#2.标准输出（stdout）和标准错误输出(stderr)

# 下面的例子还是比较难的，所以要先做说明
# &&表示前面的命令执行成功了，才去执行后面的命令
# /dev/null是一个无底洞机制，表示不输出内容
# ls+是一个不存在的命令，这样写就是为了报错
# ()加括号是为了ls和ls+两个命令都重定向到/dev/null。也就是都不输出消息
# 标准io有三种stdin,stdout,stderr分别用0，1，2表示。
# >/dev/null，应该也可以写成1>/dev/null,1>表示stdout,默认就是所以可以省略1，
# 2>表示stderr。
# 所以下面的例子也可以写成 (ls && ls+ 1>/dev/null)
# 下面语句的输出结果就是ls的结果不输出，而ls+的错误结果会输出

# (ls && ls+) > /dev/null

#输出结果
#ls 的结果不会输出 ls+的错误结果会输出
#如果改成下面这样，那么相反，ls的结果会输出，ls+的结果不会输出

#(ls && ls+) 2>/dev/null

#如果我想把stdout和stderr的内容都不输出，那么可以写成下面的样子
#(ls && ls+) >/dev/null 2>/dev/null
#或者 
#(ls && ls+) 2>/dev/null >/dev/null
#这样写有点长，下面的是比较精简的写法
# &1和&2相当于是stdout和stderr通道，&实际上是一个标志符表示是标准io。
#因为如果不加&符号的话，2>1这样的写法，1会被认为是一个文件名。
#(ls && ls+) >/dev/null 2>&1
#(ls && ls+) 2>/dev/null 1>&2
########################################################
# 3.重定向到文件
#ls > stdout.txt
#ls+ 2> stderr.txt
#或者可以连起来写
(ls && ls+) >stdout.txt 2>stderr.txt

