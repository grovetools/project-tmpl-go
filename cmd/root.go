package cmd

import (
	"github.com/mattsolo1/grove-core/cli"
	"github.com/spf13/cobra"
)

var rootCmd *cobra.Command

func init() {
	rootCmd = cli.NewStandardCommand("ptg", "Grove project go template")

	// Add commands
	rootCmd.AddCommand(newVersionCmd())
}

func Execute() error {
	return rootCmd.Execute()
}
