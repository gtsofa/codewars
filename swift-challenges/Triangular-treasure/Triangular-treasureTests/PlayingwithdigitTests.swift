//
//  PlayingwithdigitTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 22/08/2024.
//

import XCTest
import Triangular_treasure

final class PlayingwithdigitTests: XCTestCase {
    func test_digPow_returnTheSumOfN() {
        let sut = Playingwithdigit()
        
        XCTAssertEqual(sut.digPow(for: 89, using: 1), 1)
        XCTAssertEqual(sut.digPow(for: 92, using: 1), -1)
        XCTAssertEqual(sut.digPow(for: 46288, using: 3), 51)
    }

}
