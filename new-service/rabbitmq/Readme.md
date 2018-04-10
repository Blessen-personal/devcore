# rabbitmq-docker

RabbitMQ in Docker

## Building

RabbitMQ Docker image has dependency on the following projects:

|Project |Description |Version
|:----------|:-----------|:-----------|
|Erlang|RabbitMQ written in Erlang|1.9.3|
|RabbitMQ-server|The server that would run on the containers|3.7.0|

To build the image;
```
docker build -t rabbitmq .
```
## Running

This Docker image places the rabbitmq log files inside /var/log/rabbitmq. If required, this can be mapped as a volume while docker run.

```
docker run -d --name=rabbitmq ems-rabbitmq
```
The above commands will run RabbitMQ in the default Docker networking with ports 5672 and 15672 exposed, and a generated hostname. If you want to use this container in a cluster, its helpful to explicitly set hostname using -h


## Environment Variables
When you run the rabbitmq image, you can provide environment variables using -e switch on the commandline. Following environment variables are supported:

### CLUSTERED
When clustering of rabbitmq is required

### CLUSTER_WITH
In the case when the new container is to join an existing rabbitmq cluster.

The below command will run a container named rabbit4 with CUSTER_WITH rabbit1 and  which will join the pre-existing container rabbitmq1. And hostname -h to set hostname.

```
docker run --link=rabbitmq1 --name=rabbit4 -e CLUSTERED=TRUE -e CLUSTER_WITH=rabbit1 -h rabbit4 rabbitmq

### How to test

- Install python
- Install pip
- pip install pika
- Edit the receive.py and send.py with correct amq credentials
- Then run python receive.py in one terminal
- Then run python send.py in another terminal

Then find the message sent from send.py
