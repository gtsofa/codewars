//
//  SolutionTests.swift
//  RomanNumeralsDecoderTests
//
//  Created by Julius on 16/08/2024.
//

import XCTest

class Solution {
    func solution(_ string: String) -> Int {
        let romanValues: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0
        let characters = Array(string)
        
        for i in 0..<characters.count {
            let currentValue = romanValues[characters[i]] ?? 0
            if i < characters.count - 1, currentValue < (romanValues[characters[i + 1]] ?? 0) {
                result -= currentValue
            } else {
                result += currentValue
            }
        }
        return result
    }
}

final class SolutionTests: XCTestCase {
    func test_OneThroughTen() {
        let sut = Solution()
        XCTAssertEqual(sut.solution("I"), 1)
        XCTAssertEqual(sut.solution("II"), 2)
        XCTAssertEqual(sut.solution("III"), 3)
        XCTAssertEqual(sut.solution("IV"), 4)
        XCTAssertEqual(sut.solution("V"), 5)
        XCTAssertEqual(sut.solution("VI"), 6)
        XCTAssertEqual(sut.solution("VII"), 7)
        XCTAssertEqual(sut.solution("VIII"), 8)
        XCTAssertEqual(sut.solution("IX"), 9)
        XCTAssertEqual(sut.solution("X"), 10)
    }
    
    func test_solution_deliversDecodedBigNumbers() {
        let sut = Solution()
        XCTAssertEqual(sut.solution("C"), 100)
        XCTAssertEqual(sut.solution("CDXLIV"), 444)
        XCTAssertEqual(sut.solution("M"), 1000)
        XCTAssertEqual(sut.solution("MCMLIV"), 1954)
        XCTAssertEqual(sut.solution("MCMXC"), 1990)
        XCTAssertEqual(sut.solution("MCMXCIX"), 1999)
        XCTAssertEqual(sut.solution("MM"), 2000)
        XCTAssertEqual(sut.solution("MMVIII"), 2008)
        XCTAssertEqual(sut.solution("MMM"), 3000)
        XCTAssertEqual(sut.solution("MMMCM"), 3900)
        XCTAssertEqual(sut.solution("MMMCMXIV"), 3914)
        
        
    }

}
