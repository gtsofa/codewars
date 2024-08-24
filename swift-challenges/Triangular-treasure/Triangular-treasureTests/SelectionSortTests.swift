//
//  SelectionSortTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 24/08/2024.
//

import XCTest
import Triangular_treasure

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
