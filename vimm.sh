#!/bin/bash
#创建shell 脚本时 在文件开始部分写入一些信息,并在保存退出后简单检查是否有语法错误,并给出提示。

[ -e $1 ] && ISMPTC=`wc -m $1 | cut -d ' ' -f1`

if [ ! -e $1 ] || [ $ISMPTC -eq 0 ] ; then
cat >$1<<EOF
#!/bin/bash
#:Tital: `basename $1`
#:Synopsis: `basename $1`
#:Date: `date +%F`
#:Version: 1.0
#:Author: lovvvve
#:Options:

EOF
fi
vim +8 $1


until bash -n $1;do
  echo -n  "youcuoqu q/Q yuichu qita bianji : "
  read CHOICE
  [[ $CHOICE = [Qq] ]] && echo "exiting..." && exit 78
  vim +8 $1
done

