#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost',credentials=pika.PlainCredentials('myuser', 'mypass')))
channel = connection.channel()


channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                      routing_key='hello',
                      body='Hi Kayako')
print(" [x] Sent 'Hi Kayako'")
connection.close()
