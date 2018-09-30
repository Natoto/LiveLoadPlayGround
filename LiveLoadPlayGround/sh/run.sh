#!/bin/sh

#  run.sh
#  DynamicKit
#
#  Created by booob on 22/6/2018.
#  Copyright © 2018 booob. All rights reserved.

cd /opt/LiveLoad/dylib
path=`pwd`'/'
number_name='framework_version'
number=$path$number_name
v=0
if [ -e $number ]; then
  v=`cat $number_name`
else
  echo 0 > $number_name
fi


from="LiveLoadPlayGround.framework/LiveLoadPlayGround"
to="LiveLoadPlayGround.framework/LiveLoadPlayGround_"$v
mv $from $to

# add version
v="$(($v+1))"
echo $v > $number_name
