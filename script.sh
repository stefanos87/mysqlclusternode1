#!/bin/bash
echo "Start mysql"
/etc/init.d/mysql start -D FOREGROUND
sleep 120
mysql -uroot -proot \
  -e "GRANT ALL ON *.* TO 'root'@'%.%.%.%' identified by 'root';" \
  -e "GRANT ALL ON *.* TO 'root'@'localhost' identified by 'root';" 
  
  
# sleep 120

# mysql -uroot -proot \
#   -e "SET SQL_LOG_BIN=0;" \
#   -e "create user repl;" \
#   -e "GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%' IDENTIFIED BY 'root';" \
#   -e "GRANT ALL ON *.* TO 'root'@'%.%.%.%' identified by 'root';" \
#   -e "GRANT ALL ON *.* TO 'root'@'localhost' identified by 'root';" \
#   -e "GRANT ALL ON *.* TO 'repl'@'%.%.%.%' identified by 'root';" \
#   -e "GRANT ALL ON *.* TO 'repl'@'localhost' identified by 'root';" \
#   -e "flush privileges;" \
#   -e "SET SQL_LOG_BIN=1;" \
#   -e "change master to master_user='repl', master_password='root' for channel 'group_replication_recovery';" \
#   -e "SET GLOBAL group_replication_bootstrap_group=ON;" \
#   -e "START GROUP_REPLICATION;" \
#   -e "SET GLOBAL group_replication_bootstrap_group=OFF;" \
#   -e "SELECT * FROM performance_schema.replication_group_members;" 



