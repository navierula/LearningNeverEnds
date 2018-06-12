package main

import "fmt"

func main() {
	a := true
	b := false
	c := a && b
	d := a || b
	fmt.Println(c, d)

	i := 55     
    j := 67.8   
    sum := i + int(j) 
    fmt.Println(sum)

    ii := 10
    var jj float64 = float64(ii) //this statement will not work without explicit conversion
    fmt.Println("j", jj)
}