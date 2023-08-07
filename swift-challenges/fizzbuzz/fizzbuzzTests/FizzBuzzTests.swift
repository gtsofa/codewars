//
//  FizzBuzzTests.swift
//  fizzbuzzTests
//
//  Created by Julius on 07/08/2023.
//

import XCTest

class FizzBuzz {
    func evaluate(_ value: Int) -> String {
        if value.isMultiple(of: 3) {
            return "Fizz"
        } else {
            return "Buzz"
        }
        
    }
}


final class FizzBuzzTests: XCTestCase {
    
    func test_evaluate_isMultipleOfThreeDeliversFizz() {
        
        let samples = [3, 6, 9, 12, 15]
        
        samples.forEach { sample in
           
            XCTAssertEqual(makeSUT().evaluate(sample), "Fizz", "on sample \(sample)")
        }
    }
    
    func test_evaluate_isMultipleOfFiveDeliversBuzz() {
        
        let result = makeSUT().evaluate(4)
        
        XCTAssertEqual(result, "Buzz")
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> FizzBuzz {
        let sut = FizzBuzz()
        return sut
    }

}
