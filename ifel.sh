read -p "Input number:" num

if [ $num -ge 90 ] ;then 
   echo "great!"
elif [ $num -ge 80 ];then
	echo "good!"

elif [ $num -ge 50 -a $num -le 80 ];then
	echo "so so!"
else
	echo "bad!"

fi	
	
