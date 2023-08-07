//
//  FizzBuzzTests.swift
//  fizzbuzzTests
//
//  Created by Julius on 07/08/2023.
//

import XCTest
import fizzbuzz

final class FizzBuzzTests: XCTestCase {
    
    func test_evaluate_isMultipleOfThreeDeliversFizz() {
        
        let samples = [3, 6, 9]
        
        samples.forEach { sample in
            expect(sut: makeSUT(), toDeliver: "Fizz", on: sample)
        }
    }
    
    func test_evaluate_isMultipleOfFiveDeliversBuzz() {
        
        let samples = [5, 10, 20]
        
        samples.forEach { sample in
            expect(sut: makeSUT(), toDeliver: "Buzz", on:sample)
        }
        
    }
    
    func test_evaluate_isMultipleOfBothThreeAndFiveDeliversFizzBuzz() {
        expect(sut: makeSUT(), toDeliver: "FizzBuzz", on: 15)
    }
    
    func test_evaluate_onNonMultipleOfThreeAndFiveDeliversIntegerInStringForm() {
        let samples = [2, 4, 7, 13]
        
        samples.forEach { sample in
            expect(sut: makeSUT(), toDeliver: String(sample), on: sample)
        }
        
        
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
