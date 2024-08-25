//
//  RecursionTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 25/08/2024.
//

import XCTest

public class Recursion {
    func fact(_ number: Int) -> Int {
        if number == 1 {
            return 1
        } else {
            return number * fact(number - 1)
        }
    }
}

final class RecursionTests: XCTestCase {
    func test_fact_returnsCorrectFactoriaValue() {
        let sut = Recursion()
        XCTAssertEqual(sut.fact(1), 1)
        XCTAssertEqual(sut.fact(2), 2)
        XCTAssertEqual(sut.fact(3), 6)
    }

}
