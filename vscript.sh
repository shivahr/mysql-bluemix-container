#!/bin/bash
set -e

### VISHAL 

adduser mysql root
echo "mysql is added to root folder"

chmod 775 /mnt/data
echo "chmod 775 done"
### /data/db
su -c "mkdir -p /mnt/data/mysql" mysql 
echo "created new directory using mysql" 

su -c "chmod 700 /mnt/data/mysql" mysql 
echo "chmod new directory to 700 with mysql" 

ln -sf /mnt/data/mysql /var/lib
echo "Linked to directory on /var/lib/mysql" 

chown -R mysql /var/lib/mysql 
echo "Changed permision of db"

deluser mysql root
echo "entryscript done"

chmod 755 /mnt/data

###VISHAL
echo "DONE!!!!!"
