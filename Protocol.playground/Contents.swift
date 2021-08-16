//\

protocol canFly{
    func fly()
}
//class Bird{
//
//    func fly(){
//        print("bird can fly")
//    }
//}

class Bani:canFly{
    func fly() {
        print("Bani can fly")
    }
    
    
    func layEgg(){
        
        print("Bani can lay egg")
        
}
}
class Penguin:Bird{
    func swim(){
        print("penguin can swim")
    }

}
  var penguin = Penguin()
penguin.swim()

