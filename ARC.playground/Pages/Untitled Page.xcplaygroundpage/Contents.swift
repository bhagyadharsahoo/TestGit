import UIKit
class Person{
    let name :String
    init(name:String) {
        self.name = name
        print("Name is being initialized")
        
    }
    deinit {
        print("Person is deinitalized")
        
    }
}

var referecnce1 : Person?
var referecnce2 : Person?
var referecnce3 : Person?

referecnce1 = Person(name: "Bhagya")
referecnce2 = referecnce1
referecnce3 = referecnce2
referecnce3=nil
referecnce1=nil
referecnce2=nil
