#!/bin/bash

#for i in {1..99} ; do
#  if [ $i -le 9 ] ; then
#    i=0$i
#  fi
#  echo $i
#done



for i in {0..99} ; do
  if [ $i -le 9 ] ; then
    i=0$i
  fi

  for ii in {0..99} ; do
    if [ $ii -le 9 ] ; then
      ii=0$ii
    fi
    echo  "i=$i and ii=$ii"
  done
done
