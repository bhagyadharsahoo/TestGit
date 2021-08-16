//: [Previous](@previous)

import Foundation

//Associate value


enum BankDiposit{
    case inValue(Int,Int,Int)
    case inWord(String)
    
}
func makediposit(_ person :BankDiposit){
    switch person{
    
    case .inValue(let hundered, let tens, let ones):
        print("diposit: \((hundered*100)+(tens * 10 )+(ones*1))")
    case .inWord(let words):
        print("diposited:\(words)")
    }
}
var persion = BankDiposit.inValue(10, 23, 2)
makediposit(persion)
var per2 = BankDiposit.inWord("one thousand")
makediposit(per2)
