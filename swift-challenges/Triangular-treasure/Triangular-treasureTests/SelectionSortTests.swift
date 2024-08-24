//
//  SelectionSortTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 24/08/2024.
//

import XCTest

public class SelectionSort {
    public init() {}
    
    public func findSmallest(_ arr: [Int]) -> Int {
        var smallestElement = arr[0]
        var smallestIndex = 0
        
        for (i, element) in arr.enumerated() {
            if element < smallestElement {
                smallestElement = element
                smallestIndex = i
            }
        }
        return smallestIndex
    }
    
    public func selectionSort(_ arr: [Int]) -> [Int] {
        var arr = arr
        var sortedArray: [Int] = []
        
        for _ in 0..<arr.count {
            let smallestIndex = findSmallest(arr)
            sortedArray.append(arr.remove(at: smallestIndex))
        }
        
        return sortedArray
        
    }
}

final class SelectionSortTests: XCTestCase {
    func test_findSmallest_returnsCorrectIndexOfTheSmallestElement() {
        let sut = SelectionSort()
        let inputArray = [5, 3, 6, 2, 10]
        
        XCTAssertEqual(sut.findSmallest(inputArray), 3)
    }
    
    func test_selectionSort_sortsGivenArray() {
        let sut = SelectionSort()
        let unsortedList = [5, 3, 6, 2, 10]
        let sortedList = unsortedList.sorted()
        
        XCTAssertEqual(sut.selectionSort(unsortedList), sortedList)
    }
}
