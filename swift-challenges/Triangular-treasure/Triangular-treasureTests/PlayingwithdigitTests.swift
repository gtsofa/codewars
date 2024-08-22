//
//  PlayingwithdigitTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 22/08/2024.
//

import XCTest

public class Playingwithdigit {
    func digPow(for number: Int, using power: Int) -> Int {
        return 1
    }
}

final class PlayingwithdigitTests: XCTestCase {
    func test_digPow_returnTheSumOfN() {
        let sut = Playingwithdigit()
        
        XCTAssertEqual(sut.digPow(for: 89, using: 1), 1)
    }

}
