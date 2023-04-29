package main

import (
	"fmt"
	"log"
	"os"
	"time"

	tele "gopkg.in/telebot.v3"
	// cobra "github.com/spf13/cobra"
)

func main() {
	pref := tele.Settings{
		Token:  os.Getenv("TOKEN"),
		Poller: &tele.LongPoller{Timeout: 5 * time.Second},
	}

	fmt.Printf("Telegram bot 'kbot' started!\n")
	kbot, err := tele.NewBot(pref)
	if err != nil {
		log.Fatal(err)
		return
	}

	kbot.Handle(tele.OnText, func(context tele.Context) error {
		var reply error
		msg := context.Text()
		log.Println("Someone enetered: " + msg)
		if msg == "/hello" {
			reply = context.Send("Hello")

		} else {
			reply = context.Send("Do not know waht to answer. Please try again")
		}
		return reply
	})

	kbot.Start()
}
