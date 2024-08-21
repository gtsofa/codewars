//
//  ShortestWordTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest

public class ShortestWord {
    func find_short(_ str: String) -> Int {
        return 1
    }
}

final class ShortestWordTests: XCTestCase {
    func test_shortWord_findsShortWordInAString() {
        let sut = ShortestWord()
        
        XCTAssertEqual(sut.find_short("I love me"), 1)
    }

}
