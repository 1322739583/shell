#!/usr/bin/env bash
#获取进程的环境变量
#都是会输出一堆的环境变量
echo -e  "\e[1;33mthe environ of kate is:\e[0m"
for pid in `pgrep kate` ; do
# tr命令将\0结尾替换为\n,不然环境变量会挤成一堆，非常的难看。
  cat /proc/${pid}/environ | tr '\0' '\n'
done

echo -e "\e[1;33mthe environ of firefox is:\e[0m"
for pid in `pgrep firefox` ; do
  cat /proc/${pid}/environ | tr '\0' '\n'
done

echo -e "\e[1;33mthe environ of dolphin  is:\e[0m"
for pid in `pgrep dolphin` ; do
  cat /proc/${pid}/environ | tr '\0' '\n'
done




#chrome是能够获取到很多个pid的，而且单个pid是有值的，for循环就出问题了。输出结果打量空白
#多个进程的dolphin也是没有问题的，也就是for循环是没问题的，可能是chrome本身的原因。
#chrome一打开就自带十几个进程
#firefox和kate如果没有出问题的话，可能是因为他们的返回值只有一个

# echo "the environ of chrome is:"
# for pid in `pgrep chrome` ; do
  # cat /proc/${pid}/environ | tr '\0' '\n'
# done

