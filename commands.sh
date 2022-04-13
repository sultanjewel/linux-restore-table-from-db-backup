sed -n -e '/LOCK TABLES `MY_TABLE_NAME`/,/Table structure for table/p' /path/to/db/backup.sql > MY_TABLE_NAME.sql

sed -i '/INSERT INTO/ s//INSERT IGNORE INTO/g' MY_TABLE_NAME.sql

mysql -u MYSQL_USER -p MY_DB_NAME < MY_TABLE_NAME.sql

