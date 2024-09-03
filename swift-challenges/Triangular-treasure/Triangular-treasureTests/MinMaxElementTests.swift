//
//  MinMaxElementTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 03/09/2024.
//

import XCTest

struct MinMax: Equatable {
    let min: Int
    let max: Int
}

class MinMaxElement {
    func findMinMax(arr: [Int]) -> MinMax? {
        guard let first = arr.first else { return nil }
        var minVal = first
        var maxVal = first
        
        for num in arr {
            if num < minVal {
                minVal = num
            }
            if num > maxVal {
                maxVal = num
            }
        }
        
        return MinMax(min: minVal, max: maxVal)
    }
}

final class MinMaxElementTests: XCTestCase {
    func test_findMinMax_returnsTheMinAndMaxValuesOfAnArray() {
        let sut = MinMaxElement()
        let test = [3, 1, 4, 1, 5, 9, 2, 6, 5]
        
        XCTAssertEqual(sut.findMinMax(arr: test), MinMax(min: 1, max: 9))
    }

}
