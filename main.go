package main

import (
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

	kbot, err := tele.NewBot(pref)
	if err != nil {
		log.Fatal(err)
		return
	}

	kbot.Handle("/hello", func(c message tele.Context) error {
		return c.Send("Hello!")
	})

	kbot.Handle("/version", func(c tele.Context) error {
		return c.Send("Version: 1.0.0-alpha")
	})

	kbot.Start()
}