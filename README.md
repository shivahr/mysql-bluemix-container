
cf ic build -t registry.eu-gb.bluemix.net/vish1/mysql-new .

cf ic run --name mymysql -e MYSQL_ROOT_PASSWORD='password' -d -p 3306:3306 -v mysqlvol:/mnt/data registry.eu-gb.bluemix.net/vish1/mysql-new

mysqlvol : volume name

/mnt/data : should be kept constant
