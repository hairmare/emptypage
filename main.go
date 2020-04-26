package main

import "github.com/hairmare/emptypage/cmd"

func main() {
	cmd.Execute()
}

//go:generate statik --include=*.html
