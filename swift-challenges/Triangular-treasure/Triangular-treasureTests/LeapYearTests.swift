//
//  LeapYearTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 17/08/2024.
//

import XCTest

class LeapYear {
    func isLeapYear(_ year: Int) -> Bool {
        if year % 4 == 0 {
            return true
        }
        else {
            return false 
        }
    }
}

final class LeapYearTests: XCTestCase {
    func test_year_onYearDivisibleBy4ReturnsTrue() {
        let sut = LeapYear()
        XCTAssertTrue(sut.isLeapYear(1600))
        XCTAssertEqual(sut.isLeapYear(2020), true)
        XCTAssertEqual(sut.isLeapYear(2000), true)
        XCTAssertEqual(sut.isLeapYear(2020), true)
    }

}
