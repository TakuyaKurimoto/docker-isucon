#!/bin/sh

# 実行時点の日時を YYYYMMDD-HHMMSS 形式で付与したファイル名にローテートする 
docker-compose exec -it web mv /var/log/nginx/access.log /var/log/nginx/access.`date +%Y%m%d-%H%M%S`.log
# nginxにログファイルを開き直すシグナルを送信する
docker-compose exec -it web nginx -s reopen