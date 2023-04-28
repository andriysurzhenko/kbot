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
		Poller: &tele.LongPoller{Timeout: 10 * time.Second},
	}

	b, err := tele.NewBot(pref)
	if err != nil {
		log.Fatal(err)
		return
	}

	b.Handle("/hello", func(c tele.Context) error {
		return c.Send("Hello!")
	})

	b.Handle("/tbchub", func(c tele.Context) error {
		return c.Send("Ти бачив хуй у бєлкі?")
	})

	b.Start()
}
