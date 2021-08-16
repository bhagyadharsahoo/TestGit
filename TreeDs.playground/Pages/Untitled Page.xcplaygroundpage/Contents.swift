import UIKit
public class TreeNode<T>{
    
    public var value :T
    public var childeren:[TreeNode] = []
    public init(_ value:T){
        self.value = value
    }
    public func add(_ child:TreeNode){
        childeren.append(child)
        
    }
}
extension TreeNode
{
    public func forEachDepthFirst(visit:(TreeNode)->Void){
       visit(self)
        childeren.forEach{
            $0.forEachDepthFirst(visit: visit)
        }
    }
}
func makeBeverageTree()->TreeNode<String>{
    
    let tree = TreeNode("bevarage")
    
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    
    let tea = TreeNode("Tea")
    let coffee = TreeNode("Coffee")
    let choclate = TreeNode("Chocklate")
    
    let greentea = TreeNode("greenTea")
    let blacktea = TreeNode("Blacktea")
    
    let soda = TreeNode("soda")
    let milk = TreeNode("Milk")
    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(choclate)
    
    
    cold.add(soda)
    cold.add(milk)

    tea.add(blacktea)
    tea.add(greentea)
    
    
    return tree
}
let tree = makeBeverageTree()
tree.forEachDepthFirst{print($0.value)}

var arra = [3,52,2,5,9]
arra.forEach
