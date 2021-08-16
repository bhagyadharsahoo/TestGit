public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) ->Bool
    mutating func dequeue() -> Element?
    var isEmpty :Bool {get}
    var peek:Element? {get}

}

public struct QueueArray<T>:Queue{
      private var array:[T] = []
       public init(){}
    
    public var isEmpty: Bool{
        array.isEmpty
    }
    public var peek: T?{
        array.first
    }
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
        
    }
    public mutating func dequeue() -> T? {
        isEmpty ? nil :array.removeFirst()
    }
}
public class TreeNode<T>{
    public var value:T
    public var children:[TreeNode] = []
    
    init(_ value:T) {
        self.value = value
    }
    public func add (_ value:TreeNode){
        children.append(value)
    }
    
}
extension TreeNode{
    
    public func forEachLevelOrder(visit:(TreeNode)->Void){
        
        visit(self)
        var queue = QueueArray<TreeNode>()
        children.forEach{queue.enqueue($0)}
        while let node = queue.dequeue(){
            visit(node)
            node.children.forEach{queue.enqueue($0)}
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
tree.forEachLevelOrder { print($0.value)
}

extension TreeNode where T:Equatable{
    
    public func search(_ value :T)-> TreeNode?{
        
        var result : TreeNode?
        forEachLevelOrder { node  in
            if node.value == value {
                result = node
            }
        }
        return result
        
    }
    
}
if let serchres1 = tree.search("greentea"){
    print("found node: \(serchres1.value)")
}
else{
    print("myghjbi")
}
