#!/bin/bash
pgrep nginx 
if [ $? -ne 0 ]; then
	exit 1
fi

pgrep telegraf 
if [ $? -ne 0 ]; then
	exit 1
fi

pgrep php 
if [ $? -ne 0 ]; then
	exit 1
fi

exit 0
