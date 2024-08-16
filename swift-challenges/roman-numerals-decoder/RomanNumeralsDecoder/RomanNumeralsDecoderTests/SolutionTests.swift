//
//  SolutionTests.swift
//  RomanNumeralsDecoderTests
//
//  Created by Julius on 16/08/2024.
//

import XCTest

class Solution {
    func solution(_ string: String) -> Int {
        return 1
    }
}

final class SolutionTests: XCTestCase {
    func test_OneThroughTen() {
        let sut = Solution()
        XCTAssertEqual(sut.solution("I"), 1)
    }

}
