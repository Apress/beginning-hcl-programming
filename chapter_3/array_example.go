package main

import (
	"fmt"
)

func main() {
	var first_array [3]int
	var second [3]string
	fmt.Println(first_array[0])
	fmt.Println(first_array[2])

	fmt.Println(second[0])
	fmt.Println(second[2])
	
	for i := 0; i <= len(first_array)-1; i++ {
		fmt.Println(first_array[i])
	}
}
