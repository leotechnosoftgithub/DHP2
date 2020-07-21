#!/bin/bash
dat=$1
key=/root/.ssh/mst.pem
curl -o ./ips/sheetal http://18.207.24.43/sheetal
for i in `cat xaa/gaa`;do ip=`shuf -n 1 ./ips/sheetal`; echo $ip; ssh -o StrictHostKeyChecking=no -i $key root@$ip ./sheetal.sh "\"$i\"" "\"$dat\"";done
echo Subject: Job job1 completed | sendmail sheetal.pant@leotechnosoft.net
screen -X quit
