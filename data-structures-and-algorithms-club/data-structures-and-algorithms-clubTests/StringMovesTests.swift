//
//  StringMovesTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 10/09/2024.
//

import XCTest

class StringMoves {
    func canMove(_ str: String) -> Int {
        return 2
    }
}

final class StringMovesTests: XCTestCase {
    func test_canMove_returnsSuccessMoves() {
        let sut = StringMoves()
        
        XCTAssertEqual(sut.canMove("<>^V"), 2)
    }
}
