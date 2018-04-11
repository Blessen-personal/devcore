yum install -y wget unzip tar
rpm -Uvh https://github.com/rabbitmq/erlang-rpm/releases/download/v19.3.6.5/erlang-19.3.6.5-1.el7.centos.x86_64.rpm
yum install -y erlang
rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.7.0/rabbitmq-server-3.7.0-1.el7.noarch.rpm
yum install -y rabbitmq-server-3.7.0-1.el7.noarch.rpm
/usr/sbin/rabbitmq-plugins list <<<'y'
/usr/sbin/rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_federation rabbitmq_federation_management <<<'y'
