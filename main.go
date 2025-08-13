package main

import (
	"os"

	"github.com/mattsolo1/grove-project-tmpl-go/cmd"
)

func main() {
	if err := cmd.Execute(); err != nil {
		os.Exit(1)
	}
}
