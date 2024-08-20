//
//  FactorialTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest

class Factorial {
    func factorial(_ n: Int) -> Int {
        //the factorial of `0` is defined as `1`
        if n == 0 {
            return 1
        } else {
            // The function calls itself with `n-1` until it reaches `0`, where the factorial of `0` is defined as `1`.
            //The results are then multiplied together as the stack unwinds.
            return n * factorial(n - 1)
        }
    }
}
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
