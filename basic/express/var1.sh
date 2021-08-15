if [ $# -eq 0 ];then
	echo "usage: `basename $0` filename"
        exit	
fi

if [ ! -f $1 ];then
	echo "error file!"
        exit	
fi

for ip in `cat ip.txt`
do
	if [ $? -eq 0 ];then
		echo "$ip is up"
	else
		echo "$ip is down"
	fi
done
