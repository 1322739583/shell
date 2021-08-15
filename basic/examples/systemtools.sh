

menu(){
  cat <<-EOF
##############################
+     h.帮助                 -
+     d.查看磁盘分区         -
+     f.查看内存             -
+     e.离开                 - 
##############################
EOF
}
menu

while true 
do
read -p "Input case:" action
case "$action" in 
	h)
		menu
		;;
d)
	df -l
	;;
f)
        free -m
	;;
e)
	exit
	;;
*)
	echo "invaild case"
	;;

esac
done
