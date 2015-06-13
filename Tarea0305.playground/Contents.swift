//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name = "default"
    var age = 0
    
    func getDetails() -> String {
        return "Este animal se llama \(name) y tiene \(age) años"
    }
}

var myAnimal = Animal()
myAnimal.name = "Puppy"
myAnimal.age = 4
myAnimal.getDetails()