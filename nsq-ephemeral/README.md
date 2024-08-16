# Summary
This is a simple example to demonstrate how to create ephemeral topics and channels in NSQ and also what happens to the topic after the channel consumer is stopped.

## Prerequisites

- [Docker](https://www.docker.com/) or [Podman](https://podman.io/)
- [Docker Compose](https://docs.docker.com/compose/) or [Podman Compose]()
- [Go](https://golang.org/)
- [Nsq_tail](https://nsq.io/components/utilities.html#nsq_tail)


## Running the example

The example will create a topic named `foo#ephemeral` and publish messages to it. Then it will create a channel named `tail#ephemeral` and consume the messages. After a few seconds, the channel will be stopped and the topic will be gone.

1. Start the NSQ cluster:

```bash
podman compose up
```

2. Create a topic and publish messages:

```bash
go run main.go
```

3. Open [nsqadmin](http://localhost:4171/) and check the topics and message count.


4. Consume messages:

```bash
nsq_tail --topic='foo#ephemeral' --channel='tail#ephemeral' --lookupd-http-address=localhost:4161
```

5. Open [nsqadmin](http://localhost:4171/) and verify that the topic and channel are gone.

6. Stop the NSQ cluster:

```bash
podman compose down
```

## References

* [NSQ Design](https://nsq.io/overview/design.html)
