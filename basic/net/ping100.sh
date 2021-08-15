>ip.txt
for i in {2..255}
do
       {
	ip=39.156.69.$i
	ping -c1 -W1  $ip &>/dev/null;
	if [ $? -eq 0 ];then
		echo "ip is:$ip" | tee -a ip.txt
	fi
       }&
done
wait
echo "finish..."

