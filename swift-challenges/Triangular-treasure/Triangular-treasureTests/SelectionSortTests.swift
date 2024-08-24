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
}

final class SelectionSortTests: XCTestCase {
    func test_findSmallest_returnsCorrectIndexOfTheSmallestElement() {
        let sut = SelectionSort()
        let inputArray = [5, 3, 6, 2, 10]
        
        XCTAssertEqual(sut.findSmallest(inputArray), 3)
        //XCTAssertEqual(sut.selectionSort(unsortedList), sortedList)
    }

}
