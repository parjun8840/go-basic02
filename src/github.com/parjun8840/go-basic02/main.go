package main

import (
	"fmt"
	"time"
)

func main() {
	var myNum int = 1000
	item1, item2 := 9.99, 5.50
	const myConst int = 100
	item1 = 10.01

	fmt.Println("The time is: ", time.Now())
	fmt.Println(5 == 6)
	fmt.Println(item1 + item2*float64(myNum))
	fmt.Println(myConst)

}
