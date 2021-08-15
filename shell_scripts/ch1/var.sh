#!/usr/bin/env bash

name="tom"
#错误，会认为name是一个命令
#name = "tom"

#错误 会先将name转成tom,然后报找不到tom这个命令
#$name = "tom"
if [ $name = "tom" ]; then
  echo "the same"
fi
#正确的可以输出，不过还是不要这样写比较好
if [ $name="tom" ]; then
  echo "the same too"
fi
