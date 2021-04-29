#!/bin/bash
# pgrep nginx 
# if [ $? -ne 0 ]; then
# 	exit 1
# fi
# #!/bin/bash
# pgrep php 
# if [ $? -ne 0 ]; then
# 	exit 1
# fi

# pgrep telegraf 
# if [ $? -ne 0 ]; then
# 	exit 1
# fi

# exit 0

if [[ $(ps | grep -v "grep" | grep -c "nginx") == 0 ]]
then
    exit 1

elif [[ $(ps | grep -v "grep" | grep -c "php") == 0 ]]
then
    exit 1

elif [[ $(ps | grep -v "grep" | grep -c "telegraf") == 0 ]]
then
    exit 1
else
    exit 0
fi