import UIKit


enum MoveDirection{
    case foreword
    case backward
    case right
    case left
}

func domove(for moving : MoveDirection){
    switch moving {
 
    case .foreword:
        print("moved foreword")
    case .backward:
        print("moved backward")
    case .right:
        print("moved right")
    case .left:
        print("moved left")
    }
    
}
domove(for: .left)
