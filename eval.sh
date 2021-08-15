#!/usr/bin/env bash
# eval [command] 可以将命令扫描两次

#例一 通过管道计算ls结果的单词数
# wc命令表示word count,用来计算单词数
# 如果不使用eval的话，会报下面的错误
#ls: 无法访问 '|': 没有那个文件或目录
#ls: 无法访问 'wc': 没有那个文件或目录
#因为$pipe的结果是当作字符串来处理的，
#加上eval的话，就会被当作|真实的管道命令处理
pipe="|"
eval ls $pipe wc -l

#例二
