//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name = "default"
    var age = 0
    
    func getDetails() -> String {
        return "Este animal se llama \(name) y tiene \(age) años"
    }
}

class Dog:Animal {
    func woof () -> String {
        return "guau guau"
    }
}

class Cat:Animal {
    func maulla () -> String {
        return "miau"
    }
}

var perroUno = Dog()
perroUno.name = "Toto"
perroUno.age = 6
perroUno.woof()
perroUno.getDetails()

var gatoUno = Cat()
gatoUno.name = "Nazgul"
gatoUno.age = 5
gatoUno.maulla()
gatoUno.getDetails()

var gatoDos = Cat()
var gatoTres = Cat()