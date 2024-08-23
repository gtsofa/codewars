//
//  BinarySearchTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 23/08/2024.
//

import XCTest
import Triangular_treasure

final class BinarySearchTests: XCTestCase {
    func test_binarySearch_returnsTheCorrectGuess() {
        let sut = BinarySearch()
        let my_list = [1, 3, 5, 7, 9]
        XCTAssertEqual(sut.binary_search(list: my_list, item: 6), nil)
    }
}
