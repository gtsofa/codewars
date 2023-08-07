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
        
        let samples = [3, 6, 9, 12, 15]
        
        samples.forEach { sample in
            let result = sut.evaluate(sample)
            
            XCTAssertEqual(result, "Fizz", "on sample \(sample)")
        }
    }

}
