//
//  FactorialTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest
import Triangular_treasure

final class FactorialTests: XCTestCase {
    func test_factorial_deliversResult() {
        let sut = Factorial()
        
        
        XCTAssertEqual(sut.factorial(0), 1)
        XCTAssertEqual(sut.factorial(1), 1)
        XCTAssertEqual(sut.factorial(2), 2)
        XCTAssertEqual(sut.factorial(3), 6)
        XCTAssertEqual(sut.factorial(4), 24)
        XCTAssertEqual(sut.factorial(5), 120)
        XCTAssertEqual(sut.factorial(6), 720)
        XCTAssertEqual(sut.factorial(7), 5040)
        
    }

}
