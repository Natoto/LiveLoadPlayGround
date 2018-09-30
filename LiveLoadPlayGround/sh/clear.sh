#!/bin/sh

#  clear.sh
#  LiveLoadPlayGround
#
#  Created by booob on 22/6/2018.
#  Copyright © 2018 booob. All rights reserved.

cd /opt/LiveLoad/dylib
if [ -e "LiveLoadPlayGround.framework" ]; then
    rm -r LiveLoadPlayGround.framework
fi
