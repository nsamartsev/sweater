#!/usr/bin/env bash

HOST=127.0.0.1
USER=nik
DEPLOY_PATH=/home/nik/
JAR_NAME=sweater2-1.0-SNAPSHOT.jar

mvn clean package

echo "Copy files..."

scp -i ~/.ssh/id_dsa \
    target/$JAR_NAME \
    $USER@$HOST:$DEPLOY_PATH

echo "Restart server..."

ssh -i ~/.ssh/id_dsa @USER@$HOST << EOF

pgrep java | xargs kill -9
nohup java -jar $JAR_NAME > log.txt &

EOF

echo 'Bye'