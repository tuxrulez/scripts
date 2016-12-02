#!/bin/sh

PID=`pidof node | cut -d " " -f1`
LOG=`cat /var/log/megacontent.log | wc -l`
if [ $LOG -gt 50 ]; then
	rm -fv /var/log/megacontent.log
fi

if [ -z $PID ]; then 
	echo "`date` - servidor OFFLINE" >> /var/log/megacontent.log
	unset http_proxy
	export SERVER_PORT=80
	export WEBSERVER_ROOT=/var/www/html/MegaContentManager/dist/
	export MONGO_URL=mongodb://localhost:27017/lopes_manager
	node /usr/local/bin/MegaContentAPI/app.js > /var/log/mega-content-manager.log &
else
	echo "`date` - servidor ONLINE" >> /var/log/megacontent.log
		exit 0
fi
