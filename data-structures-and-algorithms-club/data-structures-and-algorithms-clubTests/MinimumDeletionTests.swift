//
//  MinimumDeletionTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 12/09/2024.
//

import XCTest

struct MinimumDeletion {
    func minDeletion(_ str: String) -> Int {
        var frequency = [Character: Int]()
        
        for char in str {
            frequency[char, default: 0] += 1
        }
        
        var deletions = 0
        
        for (_, count) in frequency {
            if count % 2 != 0 {
                deletions += 1
            }
        }
        
        return deletions
    }
}

final class MinimumDeletionTests: XCTestCase {
    func test_minDeletion_returnsCorrectNumberOfLetterDeletionsInAString() {
        let sut = MinimumDeletion()
        
        let case0 = sut.minDeletion("aaa")
        let case1 = sut.minDeletion("acbcbba")
        let case2 = sut.minDeletion("axxaxa")
        let case3 = sut.minDeletion("aaaa")
        
        XCTAssertEqual(case0, 1)
        XCTAssertEqual(case1, 1)
        XCTAssertEqual(case2, 2)
        XCTAssertEqual(case3, 0)
        
    }

}
