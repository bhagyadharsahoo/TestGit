//import UIKit
//struct Name {
//
//    var na = 93
//
//}
//class School{
//
//    public var list = Name()
//    var namew="ff"
//    init(list:Name){
//        self.list = list
//    }
//
//}
//var n = Name()
//var schoo = School(list:n)
//schoo.namew = "idld"
//print(schoo.namew)
//(3, "apple") < (3, "kjio")    // true because 3 is equal to 3, and "apple" is less than "bird"
//(4, "dog") == (4, "dog")


//var num = "bhagyadhar sahoo"
//num[num.startIndex]
//num[num.index(before: num.endIndex)]
//num[num.index(after: num.startIndex)]
//let indexvalue = num[num.index(num.startIndex, offsetBy: 6)]
//
//for f in num {
//    print(f)
//}
let anotherCharacter: Character = "a"
switch anotherCharacter {
case var x:
 print("value binding")// Invalid, the case has an empty body
case "A":
    print("The letter A")
default:
    print("Not the letter A")
}
