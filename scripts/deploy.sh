#!/usr/bin/env bash

mvn clean package

echo "Copy files..."

scp -i ~/.ssh/id_dsa \
    target/sweater2-1.0-SNAPSHOT.jar \
    nik@192.168.56.101:/home/nik/

echo "Restart server..."

ssh -i ~/.ssh/id_dsa nik@192.168.56.101 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater2-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'