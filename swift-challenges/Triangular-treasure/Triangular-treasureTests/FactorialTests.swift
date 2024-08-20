//
//  FactorialTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest

class Factorial {
    func factorial(_ n: Int) -> UInt64 {
        if n == 0 {
            return 1
        } else {
            return 0
        }
    }
}
final class FactorialTests: XCTestCase {
    func test_factorial_deliversResult() {
        let sut = Factorial()
        
        let result = sut.factorial(0)
        
        XCTAssertEqual(result, 1)
        
    }

}
