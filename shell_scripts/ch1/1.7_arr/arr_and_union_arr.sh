#!/usr/bin/env bash

array_var=(1 2 3 4 5 6)
#变量输出数组，必须加{}
echo ${array_var[*]}
#效果是一样的
echo ${array_var[@]}
#显示所有索引，非常的奇怪，输出数字索引感觉没什么用处
#如果是关联数组，索引不是数字还有点意义
echo ${!array_var[*]}



arr[0]="test1"
arr[1]="test2"
arr[3]="test3"
echo ${arr[1]}
echo "the size of arr is ${#arr[*]}"
#通过for循环遍历
index=0
#不能直接写arr或者$arr会被当成第一个元素
for i in ${arr[*]} ; do
  echo "the item[$index] is ${i}"
  #shell默认是不支持任何运算的，因为所以的符号都会被当作命令
  let index++;
done


declare -A fruits
#注意分隔符是空格而不是别的符号
fruits=([apple]='100 dollors' [orange]='90 dollors')
echo "Apple cost ${fruits[apple]}"
echo ${!fruits[*]}
