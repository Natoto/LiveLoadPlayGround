#!/bin/sh

#  replacer.sh
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
sed -i -e 's/LiveLoadPlayGround_[0-9]*/LiveLoadPlayGround_'$v'/g' ${SRCROOT}'/LiveLoadPlayGround/core/LiveLoadPlayGround.m'


