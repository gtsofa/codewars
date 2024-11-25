//
//  DoublyLinkedListNode.swift
//  LinkedListConstruction
//
//  Created by Julius on 25/11/2024.
//

import Foundation

class DoublyLinkedListNode {
    var value: Int
    var prev: DoublyLinkedListNode?
    var next: DoublyLinkedListNode?
    
    init(value: Int) {
        self.value = value
    }
}

class DoublyLinkedList {
    var head: DoublyLinkedListNode?
    var tail: DoublyLinkedListNode?
    
    // O(1) time | O(1) space
    func setHead(_ node: DoublyLinkedListNode) {
        if head == nil {
            head = node
            tail = node
            return
        }
        insertBefore(head!, node)
    }
    
    // O(1) time | O(1) space
    func setTail(_ node: DoublyLinkedListNode) {
        if tail == nil {
            setHead(node)
            return
        }
        insertAfter(tail!, node)
    }
    
    // O(1) time | O(1) space
    func insertBefore(_ node: DoublyLinkedListNode, _ nodeToInsert: DoublyLinkedListNode) {
        if nodeToInsert === head && nodeToInsert === tail {
            return
        }
        remove(nodeToInsert)
        nodeToInsert.prev = node.prev
        nodeToInsert.next = node
        
        if node.prev == nil {
            head = nodeToInsert
        } else {
            node.prev!.next = nodeToInsert
        }
        node.prev = nodeToInsert
    }
    
    // O(1) time | O(1) space
    func insertAfter(_ node: DoublyLinkedListNode, _ nodeToInsert: DoublyLinkedListNode) {
        if nodeToInsert === head && nodeToInsert === tail {
            return
        }
        remove(nodeToInsert)
        nodeToInsert.prev = node
        nodeToInsert.next = node.next
        
        if node.next == nil {
            tail = nodeToInsert
        } else {
            node.next!.prev = nodeToInsert
        }
        node.next = nodeToInsert
    }
    
    // O(p) time | O(1) space
    func insertAtPosition(_ position: Int, _ nodeToInsert: DoublyLinkedListNode) {
        if position == 1 {
            setHead(nodeToInsert)
            return
        }
        
        var currentNode = head
        var currentPosition = 1
        
        while currentNode != nil && currentPosition != position {
            currentNode = currentNode!.next
            currentPosition += 1
        }
        
        if currentNode != nil {
            insertBefore(currentNode!, nodeToInsert)
        } else {
            setTail(nodeToInsert)
        }
    }
    
    // O(n) time | O(1) space
    func removeNodesWithValue(_ value: Int) {
        var currentNode = head
        
        while currentNode != nil {
            let nodeToRemove = currentNode
            currentNode = currentNode!.next
            
            if nodeToRemove!.value == value {
                remove(nodeToRemove!)
            }
        }
    }
    
    // O(1) time | O(1) space
    func remove(_ node: DoublyLinkedListNode) {
        if node === head {
            head = head?.next
        }
        if node === tail {
            tail = tail?.prev
        }
        removeNodeBindings(node)
    }
    
    // O(n) time | O(1) space
    func containsNodeWithValue(_ value: Int) -> Bool {
        var currentNode = head
        
        while currentNode != nil {
            if currentNode!.value == value {
                return true
            }
            currentNode = currentNode!.next
        }
        return false
    }
    
    private func removeNodeBindings(_ node: DoublyLinkedListNode) {
        if let prevNode = node.prev {
            prevNode.next = node.next
        }
        if let nextNode = node.next {
            nextNode.prev = node.prev
        }
        node.prev = nil
        node.next = nil
    }
}
