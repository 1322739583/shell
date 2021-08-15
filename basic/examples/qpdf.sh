path="/disk1/绘本及其他/绘本/粉红猪小妹第3季52本绘本"
export path
cd ${path}
echo "pwd is $PWD"
result=`ls ${path}`
#设置分隔符，不然默认空格也会被分割
IFS=$'\n'
OLDIFS="$IFS"
for i in $result
do
#echo "i=${i} start"
filename=${i%.*}
  
echo "正在处理${filename}.pdf"
#echo "filename=${filename}";
#echo "i=${1}"
qpdf -decrypt "$path/${i}" "$path/${filename}_decrypt.pdf"
pid="$$"
echo "$pid"
if [ $? -eq 1 ];then
  echo "处理完成"
fi 
done

