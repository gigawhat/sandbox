package main

import (
	"flag"
	"fmt"
	"log"

	"github.com/nsqio/go-nsq"
)

func main() {
	nsqHost := flag.String("nsqhost", "127.0.0.1:4150", "NSQ host")
	topic := flag.String("topic", "foo#ephemeral", "NSQ topic")
	numberOfMessages := flag.Int("number", 10, "Number of messages to send")

	flag.Parse()

	config := nsq.NewConfig()
	producer, err := nsq.NewProducer(*nsqHost, config)
	if err != nil {
		log.Fatal(err)
	}

	for i := 0; i < *numberOfMessages; i++ {
		message := fmt.Sprintf("hello world %d", i)
		err = producer.Publish(*topic, []byte(message))
		if err != nil {
			log.Fatal(err)
		}
	}

	producer.Stop()
}
