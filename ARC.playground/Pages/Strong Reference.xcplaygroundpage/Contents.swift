//: [Previous](@previous)

import Foundation

class Person{
    let name :String
    init(name:String) {
        self.name = name
        
    }
    var apatment :Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment{
    
    let unit:String
    init(unit:String) {
        self.unit = unit
        
    }
    var tenent :Person?
    deinit {
        print("Apartment \(unit) is being deinitalized")
    }
}

var jhon :Person?
var fourthbuilding :Apartment?


jhon = Person(name: "Bhagya")
fourthbuilding = Apartment(unit: "8th")

jhon?.apatment = fourthbuilding
fourthbuilding?.tenent = jhon
jhon = nil
fourthbuilding = nil
