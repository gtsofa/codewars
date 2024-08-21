//
//  ShortestWordTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest
import Triangular_treasure

final class ShortestWordTests: XCTestCase {
    func test_shortWord_findsShortWordInAString() {
        let sut = ShortestWord()
        
        XCTAssertEqual(sut.find_short("I love me"), 1)
        XCTAssertEqual(sut.find_short("bitcoin take over the world maybe who knows perhaps"), 3)
        XCTAssertEqual(sut.find_short("lets talk about javascript the best language"), 3)
        XCTAssertEqual(sut.find_short("i want to travel the world writing code one day"), 1)
        XCTAssertEqual(sut.find_short("Lets all go on holiday somewhere very cold"), 2)
        XCTAssertEqual(sut.find_short("Let's travel abroad shall we"), 2)
        XCTAssertEqual(sut.find_short("Let's spread love because it's only the thing that matter"), 3)
    }

}
