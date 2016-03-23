//: Playground - noun: a place where people can play

import Cocoa



class Node<T: Equatable> {
    var value: T
    var next: Node? = nil
    
    init(value: T) {
        self.value = value
    }
    
}


class LinkedList<T: Equatable>: CustomStringConvertible {

    var head: Node<T>? = nil
    
    func insert(value: T) {
        // check to see if the list is empty
        if self.head == nil {
            head = Node(value: value)
        } else {
        // find the last node without a next value
        var lastNode = self.head!
        while lastNode.next != nil {
            lastNode = lastNode.next!
        }
        // now that we have traverse to the last node we can now add the new node
        let newNode = Node(value: value)
        lastNode.next = newNode
        }
    }
    
    // if value to be removed is not found, do nothing
    func remove(value: T) {
        var prev: Node<T>? = self.head
        
        while prev != nil {
            if let candidate = prev!.next where candidate.value == value {
                prev!.next = candidate.next
                return
            }
            prev = prev!.next
        }
       
    }
    
    var description: String {
        
        var d = ""
        
        var candidate: Node<T>? = self.head
        while candidate != nil {
            print(candidate!.value)
            d += "\(candidate!.value) "
            candidate = candidate!.next
        }
        
        return d
        
    }
}


var l1 = LinkedList<Int>()
l1.insert(1)
l1.insert(8)
l1.insert(5)
l1.insert(13)
l1.insert(9)

let l1Array = Array(l1)


let l2 = LinkedList<Int>()
l2.insert(2)
l2.insert(4)
l2.insert(6)
l2.insert(8)






