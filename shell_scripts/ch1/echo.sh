#!/usr/bin/env bash
#在现在的环境下感叹号是可以不用转义的，加了转义反而转义符被输出了。
#书上说不加转义是会报bash: !:event not found error，不知道是什么原因。
echo "cannot include exclamation - \! within double quotes"
echo "hello !"
#用-n选项忽略结尾的换行符
echo -n "123"
echo "456"
#不加-e转义是没有效果的
echo "1\t2\t3"
echo -e "1\t2\t3"
#添加颜色
#文本颜色 重置=0，黑色=30，红色=31，绿色=32，黄色=33，蓝色=34，紫色=35，青色=36，白色=37。
#背景 重置=0，黑色=40，红色=41，绿色=42，黄色=43，蓝色=44，洋红=45，青色=46，白色=47。
#这里的\e表示escape,具体可以man echo查看转义表
#0表示关闭所有属性，1表示高亮加粗，3表示斜体，4表示下划线，5表示闪烁，7表示反显，8表示消隐
#2和6没看出什么效果
echo -e "\e[4;31m This is red text\e[0m"
echo -e "\e[1;32m This is green text\e[0m"
echo -e "\e[5;33m This is yellow text\e[0m"  #不加\e[0m结尾的话下一行也会跟着闪
echo -e "\e[2;34m This is blue text\e[0m"
echo -e "\e[3;35m This is light_red text\e[0m"
echo -e "\e[6;36m This is cyan text\e[0m"
echo -e "This is \e[7;33myellow\e[0m and \e[8;31mred\e[0m text"
echo -e "\e[1;41m This is red text\e[0m"
echo -e "\e[1;33;42m This is yellow text,and green bg"





