//
//  SumofoddnumbersTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 20/08/2024.
//

import XCTest

class Sumofoddnumbers {
    func sumOddNumbers(_ row: Int) -> Int {
        return row * row * row
    }
}

final class SumofoddnumbersTests: XCTestCase {
    func test_sumOddNumbers_deliversCorrectResults() {
        let sut = Sumofoddnumbers()
        
        XCTAssertEqual(sut.sumOddNumbers(1), 1)
        XCTAssertEqual(sut.sumOddNumbers(2), 8)
        XCTAssertEqual(sut.sumOddNumbers(3), 27)
        XCTAssertEqual(sut.sumOddNumbers(4), 64)
        XCTAssertEqual(sut.sumOddNumbers(13), 2197)
        XCTAssertEqual(sut.sumOddNumbers(19), 6859)
        XCTAssertEqual(sut.sumOddNumbers(41), 68921)
        XCTAssertEqual(sut.sumOddNumbers(42), 74088)
        XCTAssertEqual(sut.sumOddNumbers(74), 405224)
        XCTAssertEqual(sut.sumOddNumbers(86), 636056)
        XCTAssertEqual(sut.sumOddNumbers(93), 804357)
        XCTAssertEqual(sut.sumOddNumbers(101), 1030301)
    }
}
