ftp -inpv gbuild.gdev.com << EOF
user gbuildftp EALhMiuJ8Ry
cd /ftp/gbuildftp/kayako/location/
bin
get city.mmdb /geo-db/city.mmdb
get isp.mmdb  /geo-db/isp.mmdb
get conn.mmdb /geo-db/conn.mmdb
get location.tar.gz /tmp/location.tar.gz
bye
EOF

cd /tmp && tar -xvf location.tar.gz && mv ./location /bin/location
