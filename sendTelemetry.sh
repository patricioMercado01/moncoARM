#!/bin/bash 
while :
do
 eval cat sign_lower_then /dev/ttyACM0 | ./readSerial.sh > tlm.json

cat ~/Documents/iot/tlm.json | coap post coap://endor.ceisufro.cl/api/v1/W86Df3JMoXpUD4hFKp77/telemetry
eval rm tlm.json
done
