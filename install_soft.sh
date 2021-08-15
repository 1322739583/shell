#root用户的UID为0。-ne 表示不等于。查看man [ 
if [ $UID -ne 0 ];then
	echo "没有权限！"
else
        pacman -Q 7zip
#	soft_info=(pacman -Q zip)
#	echo "soft info : $soft_info"
	if [ $soft_info -eq 0 ];then
		echo "软件已经安装"
                echo "开始卸载"
		pacman -R --noconfirm zip
	else
		pacman -S  --noconfirm zip
	fi
fi
