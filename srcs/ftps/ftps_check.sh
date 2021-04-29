#!/bin/bash
pgrep vsftpd 
if [ $? -ne 0 ]; then
	exit 1
fi

pgrep telegraf 
if [ $? -ne 0 ]; then
	exit 1
fi

exit 0
