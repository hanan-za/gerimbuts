#!/bin/bash
# Start node localhost server at port 3000
if [ $1 = "start" ]
then
	pm2 --name app start npm -- start
elif [ $1 = "stop" ]
then
	pm2 delete app
elif [ $1 = "restart" ]
then
	pm2 restart app
else
	echo "USAGE: ./server.sh start | stop | restart"
fi
