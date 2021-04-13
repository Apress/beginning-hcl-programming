package main

import (
	"fmt"
)

func boolConvertion(value bool) int {
	if value {
		return 1
	}

	return 0
}

func main() {
	fmt.Println(boolConvertion(true))
	fmt.Println(boolConvertion(false))
}
