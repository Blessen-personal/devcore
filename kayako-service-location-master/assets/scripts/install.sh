#Installation of required packagaes
yum -y install git make ftp
yum -y clean all
# Making the folder structure for Installation of goloang and location service
mkdir -p "$GOPATH/src/github.com/kayako/service-location" "$GOPATH/bin" /geo-db && chmod -R 777 "$GOPATH"
