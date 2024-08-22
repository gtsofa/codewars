//
//  PlayingwithdigitTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 22/08/2024.
//

import XCTest

public class Playingwithdigit {
    func digPow(for number: Int, using power: Int) -> Int {
        let digits = String(number).compactMap { Int(String($0)) }
        let sum = digits.enumerated().reduce(0) { acc, pair in
            let (index, digit) = pair
            return acc + Int(pow(Double(digit), Double(power + index )))
        }
        return sum % number == 0 ? sum / number : -1
    }
}

final class PlayingwithdigitTests: XCTestCase {
    func test_digPow_returnTheSumOfN() {
        let sut = Playingwithdigit()
        
        XCTAssertEqual(sut.digPow(for: 89, using: 1), 1)
        XCTAssertEqual(sut.digPow(for: 92, using: 1), -1)
        XCTAssertEqual(sut.digPow(for: 46288, using: 3), 51)
    }

}
