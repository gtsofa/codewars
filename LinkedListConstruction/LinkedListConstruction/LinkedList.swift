//
//  LinkedList.swift
//  LinkedListConstruction
//
//  Created by Julius on 15/04/2025.
//

import Foundation

/*
 What is a LinkedList?
 - A linked list is a data structure used to store a sequence of elements.
    - Unlike arrays, linkedList don't use contiguous memory locations.Instead each element (node) stores its value and a reference (or pointer) to the next node in the sequence
 
 Key Characteristics
 - Dynamic size: Can grow or shrink dynamically wihtout memory reallocation
 - Efficient Insertions/Deletions: Unlike arrays, inserting or deleting elements does not require shifting elements
 - Slower access time: To access an element, traversal from the head node is required
 
 Real world examples of Linked Lists
 - Music playlist: Each song is a node, and each node points to the next song in the playlist
 - Browser history: each web page visited is a done, with a reference to the previous and next page
 - Undo/Redo in text editors: Each edit is stored as a node, forming a linked structure for undo/redo operations
 */


class ListNode {
    var val: Int
    var next: ListNode?
    
    init() {
        self.val = 0
        self.next = nil
    }
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

var node0 = ListNode()
let node1 = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)

node0.next = node1
node1.next = node2
node2.next = node3


func traverseLinkedList(_ head: ListNode?) {
    var pointer = head
    
    while pointer != nil {
        print(pointer?.val)
        pointer = pointer?.next
    }
}

traverseLinkedList(node0)
