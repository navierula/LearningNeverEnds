package main

import (
    "fmt"
    "math"
)

func main() {
    var age int = 11
    fmt.Println("my age is initialized:", age)
    age = 19
    fmt.Println("you're not", age, "forever.")
    age = 100
    fmt.Println("when you've only got a", age, "years to live.")

    // declare multiple variables
    var width, height int = 100, 50
    //var width, height := 100, 50
    fmt.Println("width is", width, "height is", height)

    // declare multiple variables in single statement
    var (
        name = "joey"
        agee = "9"
        heightt int = 5
    )
    fmt.Println(name, "is", agee, "and", heightt, "inches tall.")

    a, b := 145.8, 543.8
    c := math.Min(a, b)
    fmt.Println("c is:", c)
}



