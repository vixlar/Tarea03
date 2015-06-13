//: Playground - noun: a place where people can play

import UIKit

var fruit = "apple"
var myFruit = "banana"

if (fruit == myFruit) {
    println("This is true")
} else if (fruit == "orange"){
    println("Special condition")
} else {
    println("No conditions met")
}

switch fruit {
    case "apple":
        println("The fruit was some \(fruit)")
    case "banana":
        println("The fruit was a bunch of \(fruit)")
default:
        println("No fruits matched")
}