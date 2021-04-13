package main

import (
	"fmt"
)

func main() {
	x := 1          // Declare the variable x and assign the value 1
	p := &x         // create a pointer to x the type is *int
	fmt.Println(*p) //Write the value of the pointer p
	*p = 2          // the new value of x is 2, this because *p "point" the address memory of x
	fmt.Println(x)
}
