import Foundation
import UIKit

class Node<T:Equatable>: Equatable{
    
    
    var value :T
    var next :Node<T>? = nil
    var prev  :Node<T>? = nil
    init(value:T) {
        self.value = value
        
    }
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.value == rhs.value
    }
}
class DoublyLinkedList<T:Equatable>{
    
    var head:Node<T>? = nil
    var tail:Node<T>? = nil
    var size :Int = 0
    public var isEmpty:Bool{
        head == nil
    }
    
}
extension DoublyLinkedList {
    public var first:Node<T>?{
        return head!
        
    }
    public var last:Node<T>?{
        return tail!
    }
    
    func append(value:T){
          let newnode = Node(value: value)
        guard self.head != nil else{
            self.head = newnode
            self.tail = newnode
            self.size += 1
            return
        }
        
        self.tail?.next = newnode
        newnode.prev = self.tail
        self.tail = newnode
        
        self.size += 1
        
    }
    func prepend(value:T){
        
        let newnode = Node(value: value)
        
        guard self.head != nil else{
            self.head = newnode
            self.tail = newnode
            self.size += 1
            return
            
            
        }
        self.head?.prev = newnode
        newnode.next = self.head
        self.head = newnode
        
        self.size += 1
    }
    func item() -> [T?]{
        
        guard self.head != nil else{
            return []
            
        }
        var allItem = [T]()
        var cur = self.head
        while cur != nil {
            allItem.append(cur!.value)
            cur = cur?.next
            
        }
        return allItem
        
    }
    func insertAtIndex(_ value :T ,atIndex:Int){
        
        guard atIndex >= 0 && atIndex <= self.size else{
            
            print("indexout!")
            return
        }
        
        if atIndex == 0{
            self.prepend(value: value)
            
        }
        else if atIndex == self.size
        {
            self.append(value: value)
        }
        else{
            
            let newNode = Node(value: value)
            var curr = self.head
            for _ in 0..<atIndex{
                curr = curr?.next
            }
            curr?.prev?.next = newNode
            newNode.prev = curr?.prev
            curr?.prev = newNode
            newNode.next = curr
            self.size += 1
        }
    }
    func removefirst(){
        head = head?.next
        head?.prev = nil
        size -= 1
    }
    func removelast(){
        tail = tail?.prev
        tail?.next = nil
        size -= 1
    }
}


public protocol Queue{
    associatedtype Element
    mutating func enqueue(_ element :Element)
    mutating func dequeue()->Element?
    var isEmpty:Bool {get}
    var peek :Element?{get}
}


public class QueueLinkedList<T:Equatable>:Queue{
    
private var list = DoublyLinkedList<T>()
public init() {}
    
    public func enqueue(_ element: T)  {
        list.append(value: element)
        
        
    }
    public func dequeue() -> T? {
        guard !list.isEmpty,let element = list.first else{
            return nil
        }
         list.removefirst()
        return element as? T
    }
    public var peek: T?{
        list.first?.value
    }
    public var isEmpty: Bool{
        list.isEmpty
    }
    
}

enum Direction{
  case front
  case back
    
}
protocol  Deque {
    associatedtype Element
    var isEmpty :Bool{get}
    func peek(from direction:Direction)-> Element?
    mutating func enqueue(_ element :Element, to direction:Direction)->Bool
    mutating func dequeue(from direction :Direction)->Element?
    
    
}
class DequeueDoubleLinkedList<Element:Equatable>:Deque{
    var list = DoublyLinkedList<Element>()
    public init(){}
    var isEmpty: Bool{
        list.isEmpty
    }
    func peek(from direction: Direction) -> Element? {
        switch direction{
        
        case .front:
            return list.first?.value
        case .back:
            return list.last?.value
        }
    }
    
    func enqueue(_ element: Element, to direction: Direction) -> Bool {
        switch direction{
        
        case .front:
            list.prepend(value: element)
        case .back:
            list.append(value: element)
        }
        return true
    }
    func dequeue(from direction: Direction) -> Element? {
        var element:Element?
        switch direction{
        
        case .front:
            element = (list.removefirst() as! Element)
        case .back:
           
            element = (list.removelast() as! Element)
            
        }
        return element
    }
}
extension DequeueDoubleLinkedList :CustomDebugStringConvertible{
    var debugDescription: String {
        String(describing: list)
    }
    
}
let dequeue = DequeueDoubleLinkedList<Int>()
dequeue.enqueue(1, to: .back)
dequeue.enqueue(2, to: .back)
dequeue.enqueue(3, to: .back)
dequeue.enqueue(4, to: .back)
//print(dequeue.enqueue(3, to: .back))
dequeue.dequeue(from: .back)
//dequeue.dequeue(from: .front)
//dequeue.dequeue(from: .front)

