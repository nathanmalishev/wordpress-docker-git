#!/bin/sh
CONTAINER="wordpressdockergit_mysql_1"
ROOT_DIR="/sqlBackup"
FILE_NAME="currentDump"
MYSQL_USER="admin"
MYSQL_PASSWORD="admin"
MYSQL_NAME="db"

if [ $1 ]
then
  FILE_NAME=$1
fi

echo restoring file "${FILE_NAME}".sql
(docker exec -i "$CONTAINER" bash -c "cd ${ROOT_DIR} && mysql -u admin -padmin db < ${FILE_NAME}.sql")

# Clean exit:
exit 0;
