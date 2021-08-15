read -p "Input number:" num
level=0;
if [ $num -ge 90 ] ;then 
   echo "great!"
   level=1;
elif [ $num -ge 80 ];then
	echo "good!"
level=2
elif [ $num -ge 50 -a $num -le 80 ];then
	echo "so so!"
	level=3
else
	echo "bad!"
level=4
fi

case $level in	
1)
	echo "level1" ;;
2)
	echo "level2" ;;
*)    
	echo "low level";;
esac
	
