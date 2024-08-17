//
//  TriangularTreasureTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 17/08/2024.
//

import XCTest
import Triangular_treasure

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
        XCTAssertEqual(sut.triangular(3), 6)
        XCTAssertEqual(sut.triangular(-5), 0)
    }

}
