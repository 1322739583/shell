# echo "准备中..."
i=0
str=""
arr=("|" "/" "-" "\\")
while [ $i -le 20 ]
do
  let index=i%4
  let indexcolor=i%8
  let color=30+indexcolor
  let NUmbER=$i*5
  printf "\e[0;$color;1m[%-20s][%d%%]%c\r" "$str" "$NUmbER" "${arr[$index]}"
  sleep 0.1
  let i++
  str+='+'
done
printf "\n"
# printf "正在执行...稍候！"
