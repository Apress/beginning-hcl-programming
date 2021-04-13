package main

import (
	"fmt"
)

func main() {
	n := make([]int, 3)

	fmt.Println(len(n))

	n[0] = 1

	n = append(n, 4)

	fmt.Println(len(n))
}
