ftp -inpv $URL << EOF
user $GDEV_LOGIN $GDEV_PASSWORD
cd /ftp/gbuildftp/kayako/location/
bin
get go1.7.linux-amd64.tar.gz /tmp/go1.7.linux-amd64.tar.gz
get city.mmdb /geo-db/city.mmdb
get isp.mmdb  /geo-db/isp.mmdb
get conn.mmdb /geo-db/conn.mmdb
get location.tar.gz /tmp/location.tar.gz
bye
EOF
# Extracting the executable & removing the compressed file
cd /tmp && tar -C /usr/local -xzf go1.7.linux-amd64.tar.gz && tar -xvf location.tar.gz && mv ./location /bin/location
rm -rf /tmp/go1.7.linux-amd64.tar.gz /tmp/location.tar.gz
