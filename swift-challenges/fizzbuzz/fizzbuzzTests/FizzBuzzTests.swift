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
            expect(sut: makeSUT(), toDeliver: "Fizz", on: sample)
        }
    }
    
    func test_evaluate_isMultipleOfFiveDeliversBuzz() {
        
        expect(sut: makeSUT(), toDeliver: "Buzz", on: 3)
    }
    
    // MARK: - Helpers
    
    func makeSUT() -> FizzBuzz {
        let sut = FizzBuzz()
        return sut
    }
    
    func expect(sut: FizzBuzz, toDeliver expectedResult: String, on value: Int, file: StaticString = #filePath, line: UInt = #line) {
        let receivedResult = sut.evaluate(value)
        
        XCTAssertEqual(expectedResult, receivedResult, "on value \(value)", file: file, line: line)
    }

}
