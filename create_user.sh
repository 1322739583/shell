while true
do
	read -p "Please input username:" user 

       	if [ -z "$user" ];then
	   echo "用户名不能为空"
	   exit

	fi

        read -p "Please input password:" pass

       
        read -p "Please input num" num

	if [ [!"$num"=~^[0-9]+$] ];then
		echo "你输入的不是数字x,程序退出！"
                exit;
	fi


printf "

--------------------------------------
          the user info is:
	  username:$user
	  password:$pass
	  num:$num
--------------------------------------
"


	read -p "Are you sure?[y/n]" action


	if [ "$action" == "y" ];then

     	echo "create user $user"
        break;
	fi

done

for i in `seq -w $num`
do
	fulluser=$user$i
	id $user &>/dev/null
	if [ $? -eq 0 ];then 
		echo "user $fulluser  already exists"
	else 
		useradd $fulluser
		echo "$pass | passwd --stdin $fulluser "
	        if [ $? -eq 0 ]; then 
			echo "$fulluser is created"

		fi

	fi
done

