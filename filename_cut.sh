path="/dir1/dir2/dir3/abc.tg.tar"
echo "测试文件为${path}"

echo "\${path#*/}  ${path#*/}"
echo "\${path##*/}  ${path##*/}"
echo "\${path#*.}  ${path#*.}"
echo "\${path##*.}  ${path##*.}"

echo "\${path%/*}  ${path%/*}"
echo "\${path%%/*}  ${path%%/*}"
echo "\${path%.*}  ${path%.*}"
echo "\${path%%.*}  ${path%%.*}"
#在有路径的情况下截取文件名
tmp="${path##*/}" #先截取abc.tg.tar
echo "filename is ${tmp%%.*}" #最后截取文件名abc
