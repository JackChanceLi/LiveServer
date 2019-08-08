#!/bin/bash

echo "重启SRS-API服务"
./etc/init.d/srs-api stop
./etc/init.d/srs-api start

echo  "重启SRS服务"
./etc/init.d/srs stop
nohup ./objs/srs -c ./conf/live360.conf &

echo "结束"