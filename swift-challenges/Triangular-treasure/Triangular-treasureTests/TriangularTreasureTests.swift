//
//  TriangularTreasureTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 17/08/2024.
//

import XCTest
class TriangularTreasure {
    func triangular(_ n: Int) -> Int  {
        guard n > 0 else {
            return 0
        }
        return n * (n + 1) / 2
    }
}
// Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// You need to return the nth triangular number. You should return 0 for out of range values:
final class TriangularTreasureTests: XCTestCase {
    func test() {
        let sut = TriangularTreasure()
        XCTAssertEqual(sut.triangular(1), 1)
    }
    
    func test_triangular_checksOutOfRangeValues() {
        let sut = TriangularTreasure()
        XCTAssertEqual(sut.triangular(-10), 0)
    }
    
    func test_triangular_calculatesNthTriangularNumber() {
        let sut = TriangularTreasure()
        
        XCTAssertEqual(sut.triangular(2), 3)
    }

}
