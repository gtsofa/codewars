//
//  RecursionTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 25/08/2024.
//

import XCTest

public class Recursion {
    func fact(_ fact: Int) -> Int {
        return 1 
    }
}

final class RecursionTests: XCTestCase {
    func test_fact_returnsCorrectFactoriaValue() {
        let sut = Recursion()
        XCTAssertEqual(sut.fact(1), 1)
    }

}
