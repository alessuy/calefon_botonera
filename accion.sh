#! /bin/sh

case $1 in
	"on" ) curl -d '{"deviceid": "10008fb762", "data":{"switch": "on"}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/switch;;
	"off") curl -d '{"deviceid": "10008fb762", "data":{"switch": "off"}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/switch;;
	* ) curl -d '{"deviceid": "10008fb762", "data":{}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/info | awk -F "\\" '{print $4}' | tr -d \" ;;
esac
