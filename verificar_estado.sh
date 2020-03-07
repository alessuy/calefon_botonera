#! /bin/sh
curl -d '{"deviceid": "10008fb762", "data":{}}' -H 'Content-Type: application/json' -s http://192.168.0.108:8081/zeroconf/info | awk -F "\\" '{print $4}' | tr -d \"
