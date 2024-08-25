//
//  RecursionTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 25/08/2024.
//

import XCTest
import Triangular_treasure

final class RecursionTests: XCTestCase {
    func test_fact_returnsCorrectFactoriaValue() {
        let sut = Recursion()
        XCTAssertEqual(sut.fact(1), 1)
        XCTAssertEqual(sut.fact(2), 2)
        XCTAssertEqual(sut.fact(3), 6)
    }

}
