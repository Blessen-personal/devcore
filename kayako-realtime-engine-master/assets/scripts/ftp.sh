yum install -y ftp
touch /etc/init.d/couchdb

ftp -inpv $URL << EOF
user $GDEV_LOGIN $GDEV_PASSWORD
cd /ftp/gbuildftp/kayako/realtimeEngine/
bin
get realtime.tar.gz /code/realtime.tar.gz
bye
EOF
