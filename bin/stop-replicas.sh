#/bin/bash
#停止集群复制
passwd=$(sed '/SLAVE_PASSWD/!d;s/.*=//' ../.env)
docker exec -it  mysql-slave mysql -uroot -p${passwd} \
-e "STOP SLAVE"
docker exec -it  mysql-slave2 mysql -uroot -p${passwd} \
-e "STOP SLAVE"
