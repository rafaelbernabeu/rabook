# Kafka

```
> bin/zookeeper-server-start.sh config/zookeeper.properties
```

```
> bin/kafka-server-start.sh config/server.properties
```

```
> bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test
```

```
> bin/kafka-topics.sh --list --bootstrap-server localhost:9092
```

```
> bin/kafka-topics.sh --bootstrap-server localhost:9092 --alter --topic my_topic_name --partitions 40
```

```
> bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
```

```
> bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
```

```
> bin/kafka-console-consumer.sh --topic __consumer_offsets --formatter "kafka.coordinator.group.GroupMetadataManager\$OffsetsMessageFormatter"
```

# Zookeeper

```
> echo stat | nc zookeeper 2181
> echo srvr | nc zookeeper 2181
```


https://github.com/confluentinc/confluent-kafka-python/issues/137
https://github.com/edenhill/librdkafka/blob/master/INTRODUCTION.md#high-throughput
https://github.com/edenhill/librdkafka/wiki/FAQ#why-is-there-no-sync-produce-interface
