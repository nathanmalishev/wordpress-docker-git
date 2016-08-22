#!/bin/sh
CONTAINER="2016wcbilby_mysql_1"
ROOT_DIR="/sqlBackup"
FILE_NAME="currentDump"
MYSQL_USER="admin"
MYSQL_PASSWORD="admin"
MYSQL_NAME="db"

if [ $1 ]
then
  FILE_NAME=$1
fi

echo backing up mysql to "${FILE_NAME}".sql
docker exec -i "$CONTAINER" bash -c "cd ${ROOT_DIR} && mysqldump -l -u admin -padmin db > ${FILE_NAME}.sql"
# Clean exit:
exit 0;
