//
//  MinimumDeletionTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 12/09/2024.
//

import XCTest
@testable import data_structures_and_algorithms_club

/*
 In an even word, each letter occurs an even number of times.
 Write a function solution that, given a string S consisting of N characters, returns the minimum number of letters that must be deleted to obtain an even word.
 Examples:
 1. Given S = "acbcbba", the function should return 1 (one letter b must be deleted).
 2. Given S = "axxaxa", your function should return 2 (one letter a and one letter x must be deleted).
 3. Given S = "aaaa", your function should return 0 (there is no need to delete any letters).
 Write an efficient algorithm for the following assumptions:
 N is an integer within the range [0..200,000];
 string S is made only of lowercase letters (a−z).
 
 oddnumber;1, 3, 5, 7, 9
 evennumber n/2 == 0; n % 2 == 0, 2, 4, 6,8
 s="ciao"
 [k:v]= s[c] = 1 => ["c": 1, "i": 1, "a": 1, "o": 1]
 */

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
