//
//  StringMovesTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 10/09/2024.
//

import XCTest
@testable import data_structures_and_algorithms_club

final class StringMovesTests: XCTestCase {
    func test_canMove_returnsSuccessMoves() {
        let sut = StringMoves()
        
        XCTAssertEqual(sut.canMove("><^v"), 2)
        XCTAssertEqual(sut.canMove("<<^<v>>"), 3)//given:6, getting:5, canMove:3
        XCTAssertEqual(sut.canMove("><><"), 0)
    }
}
