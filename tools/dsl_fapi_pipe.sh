#!/bin/sh

pipe_no=0

# use specified pipe no
case "$1" in
	0|1|2)
		pipe_no=$1; shift; ;;
esac

echo $* > /tmp/pipe/dsl_fapi_${pipe_no}_cmd
result=`cat /tmp/pipe/dsl_fapi_${pipe_no}_ack`

echo "$result"
