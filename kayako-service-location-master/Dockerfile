FROM centos:7

# Setting up the environment variables for golang
ENV GOPATH /golang
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
ENV GDEV_LOGIN gbuildftp
ARG GDEV_PASSWORD
ENV GDEV_PASSWORD ${GDEV_PASSWORD}
ENV URL gbuild.gdev.com


ENV GO15VENDOREXPERIMENT 1

COPY assets/scripts /opt/assets
RUN cd /opt/assets/ && chmod +x install.sh ftp.sh && ./install.sh && ./ftp.sh
RUN rm -rf /opt/assets

EXPOSE 80

CMD ["./bin/location", "serve", "--log-level=debug", "--http-addr=:80", "--db=/geo-db/city.mmdb", "--db=/geo-db/isp.mmdb", "--db=/geo-db/conn.mmdb"]
