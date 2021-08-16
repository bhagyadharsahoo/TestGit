//: [Previous](@previous)

import Foundation
enum MoveDirection:String{
    
    case foreword = "Moved foreword"
    case back = "moved backward"
    case left = "moved left"
    case right = "moved right"
    
}
var action = MoveDirection.right
print(action.rawValue)

enum CricketScore:Int{
    
    case single = 1 , double,triple,boundary,sixes
    
    func getScore()->Int{
        return self.rawValue
    }
}
var shot = CricketScore.sixes
print(shot.getScore())
