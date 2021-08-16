//: [Previous](@previous)

import Foundation

class Coustomer {
    let name :String
    var card :CreditCard?
    init(name:String) {
        self.name = name
        
    }
    deinit {
        print("\(name) is being de initailized")
    }
    
}


class CreditCard{
    let number :UInt64
    unowned let coustomer :Coustomer
    init(number:UInt64 , coustomer :Coustomer) {
        self.number=number
        self.coustomer=coustomer
        
    }
    deinit {
        print("Card #\(number) is being deinitialized")
        
    }
    
}
var bhagya :Coustomer?


 bhagya = Coustomer(name: "bhagaya")
bhagya?.card = CreditCard(number: 1234_1234_1234, coustomer: bhagya!)
bhagya = nil
