//
//  TriangularTreasureTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 17/08/2024.
//

import XCTest
class TriangularTreasure {
    func triangular(_ n: Int) -> Int  {
        return 1
    }
}
// Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// You need to return the nth triangular number. You should return 0 for out of range values:
final class TriangularTreasureTests: XCTestCase {
    func test() {
        let sut = TriangularTreasure()
        XCTAssertEqual(sut.triangular(1), 1)
    }

}
