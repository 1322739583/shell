sleep 5 &
echo "line 1"
echo "$$ $!"
wait
sleep 10 &
echo "line 2"
echo "$$ $!"
wait
