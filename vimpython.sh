#!/bin/bash
#创建python文件的时候 在文件的 开始添加 一些 信息!~

[ -e $1 ] && ISMPTC=`wc -m $1 | cut -d ' ' -f1`

if [ ! -e $1 ] || [ $ISMPTC -eq 0 ] ; then
cat >$1<<EOF
#!/bin/env python
# -*- coding: utf-8 -*-
#:Tital: `basename $1`
#:Synopsis: `basename $1`
#:Date: `date +%F`
#:Version: 1.0
#:Author: lovvvve
#:Mail: lovvvve@gmail.com
#:Options:


EOF
fi
vim +10 $1
