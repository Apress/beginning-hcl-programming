package main

import (
	"fmt"
)

func main() {
	s := "Hello HCL"

	fmt.Println(s[3:])
	fmt.Println(s[:5])
	fmt.Println(s[3:4])
}
