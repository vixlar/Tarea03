//: Playground - noun: a place where people can play

import UIKit

func add (number1:Int, number2:Int) -> Int {
    var retVal = number1 + number2
    return retVal
}

add(2, 4)

func getNames () -> (String, String) {
    return ("nombre1", "nombre2")
}

getNames()