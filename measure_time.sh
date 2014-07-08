#!/usr/bin/env bash -x
start_time=`date +%s%3N`
sleep(10)
#
# do some stuff here
#
stop_time=`date +%s%3N`
total_time=`expr $start_time - $stop_time`
echo $(awk "BEGIN {printf \"Total Time: %dh:%dm:%0.3fs\",$total_time/3600000,$total_time/1000%3600/60,($total_time/1000)%60}")
