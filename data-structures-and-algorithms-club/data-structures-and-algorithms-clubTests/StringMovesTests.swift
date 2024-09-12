//
//  StringMovesTests.swift
//  data-structures-and-algorithms-clubTests
//
//  Created by Julius on 10/09/2024.
//

import XCTest

class StringMoves {
    func canMove(_ str: String) -> Int {
        let characterCount = str.count
        var successfulMoves = 0
        let characters = Array(str) // 'ciao' --> ['c', 'i', 'a', 'o']
        
        for i in 0..<characterCount {
            if characters[i] == "<" {
                if i > 0 && characters[i-1] != "<" && characters[i-1] != ">" {
                    successfulMoves += 1
                }
            } else if characters[i] == ">" {
                if i < characterCount - 1 && characters[i+1] != "<" && characters[i+1] != ">" {
                    successfulMoves += 1
                }
            } else if characters[i] == "^" || characters[i] == "v" {
                successfulMoves += 1
            }
        }
        return successfulMoves
        
    }
}

final class StringMovesTests: XCTestCase {
    func test_canMove_returnsSuccessMoves() {
        let sut = StringMoves()
        
        XCTAssertEqual(sut.canMove("><^v"), 2)
        XCTAssertEqual(sut.canMove("<<^<v>>"), 3)//given:6, getting:5, canMove:3
        XCTAssertEqual(sut.canMove("><><"), 0)
    }
}
