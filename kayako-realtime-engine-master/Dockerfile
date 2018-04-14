FROM centos:7

ENV LANG="en_US.UTF-8"
ENV PATH="$PATH:/usr/local/elixir/bin"
ENV GDEV_LOGIN gbuildftp
ARG GDEV_PASSWORD
ENV GDEV_PASSWORD ${GDEV_PASSWORD}
ENV URL gbuild.gdev.com

RUN mkdir -p /opt/assets
COPY assets/scripts /opt/assets
WORKDIR /code
RUN cd /opt/assets && chmod +x install.sh ftp.sh && ./ftp.sh
USER root
RUN cd /opt/assets && ./install.sh


EXPOSE 8102

CMD ["./kre","-p", "8102"]
