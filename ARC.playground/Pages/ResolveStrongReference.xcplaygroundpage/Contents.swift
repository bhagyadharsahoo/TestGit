//: [Previous](@previous)

import Foundation

class Person{
    let name:String
    init(name:String) {
        self.name = name
        
    }
    var apartment:Apartment?
    deinit {
        print("\(name ) is being deinitialized")
    }
}
class Apartment{
    
    let unit :String
    init(unit:String) {
        self.unit = unit
        
    }
    weak var tenant :Person?
    deinit {
        print("Apartment \(unit) is being deinitialized")
        
    }
}
var bhagya : Person?
var fourth : Apartment?

bhagya = Person(name: "bhagya")
fourth = Apartment(unit: "eighth")

bhagya?.apartment = fourth
fourth?.tenant = bhagya


bhagya = nil
fourth = nil
