docker exec samplephp_mysql_1 sh -c 'exec mysqldump database -uroot -p"$MYSQL_ROOT_PASSWORD"' > ./data/mysql/dumps/$(date +%F_%R).sql
