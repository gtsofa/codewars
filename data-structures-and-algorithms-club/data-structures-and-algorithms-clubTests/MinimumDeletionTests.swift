//
//  MinimumDeletionTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 12/09/2024.
//

import XCTest
@testable import data_structures_and_algorithms_club

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
