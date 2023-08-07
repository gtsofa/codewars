//
//  FizzBuzzTests.swift
//  fizzbuzzTests
//
//  Created by Julius on 07/08/2023.
//

import XCTest

class FizzBuzz {
    func evaluate(_ value: Int) -> String {
        if value % 3 == 0 {
            return "Fizz"
        } else {
            return ""
        }
        
    }
}


final class FizzBuzzTests: XCTestCase {
    
    func test_evaluate_isMultipleOfThreeDeliversFizz() {
        let sut = FizzBuzz()
        XCTAssertEqual(sut.evaluate(3), "Fizz")
    }

}
