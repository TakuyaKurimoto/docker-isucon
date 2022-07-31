#!/bin/sh

# ログをローテートしすぎるとdocker遅くなるのでログは消す 
docker-compose exec -it web rm /var/log/nginx/access.log
docker-compose exec -it db rm /var/log/mysql/mysql-slow.log
# nginxとmysqlにログファイルを開き直すシグナルを送信する
docker-compose exec -it web nginx -s reopen
docker-compose exec -it db mysqladmin flush-logs