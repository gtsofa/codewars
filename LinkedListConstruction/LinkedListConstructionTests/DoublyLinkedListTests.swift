//
//  DoublyLinkedListTests.swift
//  LinkedListConstructionTests
//
//  Created by Julius on 18/11/2024.
//

import XCTest

class Node<T> {
    var value: T
    var next: Node?
    
    weak var previous: Node?
    
    init(value: T) {
        self.value = value 
    }
}

class DoublyLinkedList<T> {
    private let head: Node<T>?
    private let tail: Node<T>?
    
    init(head: Node<T>, tail: Node<T>) {
        self.head = head
        self.tail = tail
    }
    
    func setHead(node: Node<T>) {}
    func setTail(node: Node<T>) {}
    func insertBefore(node: Node<T>, nodeToInsert: Node<T>) {}
    func insertAfter(node: Node<T>, nodeToInsert: Node<T>) {}
    func insertAtPosition(position: Node<T>, nodeToInsert: Node<T>) {}
    func removeNodeWithValue(value: Node<T>) {}
    func remove(node: Node<T>) {}
    func containsNodeWithValue(node: Node<T>) {}
    
    
    
}

final class DoublyLinkedListTests: XCTestCase {
    func test_init_hasProperties() {
        //let sut = DoublyLinkedList(head: Node(), tail: Node() )
        //XCTAssertTrue(sut)
        //AT: 35:58 MINUTE.
    }

}
