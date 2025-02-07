#!/bin/bash

if [ -e /usr/local/lib64 ]
then
  echo '[setup_zwave.sh] Openzwave is already installed. Nothing to do here.'
else
  echo -n '[setup_zwave.sh] Openzwave is NOT installed. Going to install it now... '
    cd /opt
    curl -s -L -O http://old.openzwave.com/downloads/openzwave-1.6.1007.tar.gz
    tar -xf openzwave-1.6.1007.tar.gz && rm openzwave-1.6.1007.tar.gz
    cd openzwave-1.6.1007 && make > /dev/null 2>&1 && make install > /dev/null 2>&1
    ldconfig /usr/local/lib64
    cd /opt/iobroker
  echo 'Done.'
fi

exit 0
