import UIKit


public class Name{
    var name:String = "bhagya"
    
    
}
fileprivate class Age{
    var age:Int = 22
}


 private func checkAvilabilyty(name:Name,age:Age){
    
}

private  enum Compass:String{
    
    case nort = "bhagya"
    case south
    case east
    case west
    //case upc(Int,Int)
}



public class A {
    
    fileprivate func someMethod() {}
}

fileprivate class B: A {
    override fileprivate func someMethod() {
       // super.someMethod()
    }
}

private var a = B()
