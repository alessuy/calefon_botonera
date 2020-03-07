#! /bin/sh

if [ $1 = "on" ]
then
	curl -d '{"deviceid": "10008fb762", "data":{"switch": "on"}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/switch
else
	curl -d '{"deviceid": "10008fb762", "data":{"switch": "off"}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/switch
fi
