FROM centos:7

RUN mkdir -p /opt/assets
COPY assets/scripts /opt/assets
RUN cd /opt/assets && chmod a+x install.sh && ./install.sh

COPY assets/conf/rabbitmq.config /etc/rabbitmq/
COPY assets/conf/erlang.cookie /var/lib/rabbitmq/.erlang.cookie

RUN chmod u+rw /etc/rabbitmq/rabbitmq.config \
&& chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie \
&& chmod 400 /var/lib/rabbitmq/.erlang.cookie \
&& chmod a+x /opt/assets/start.sh

EXPOSE 5672
EXPOSE 15672
EXPOSE 25672
EXPOSE 4369
EXPOSE 9100
EXPOSE 9101
EXPOSE 9102
EXPOSE 9103
EXPOSE 9104
EXPOSE 9105

CMD /opt/assets/start.sh
