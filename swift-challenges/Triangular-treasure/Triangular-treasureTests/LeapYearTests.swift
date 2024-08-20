//
//  LeapYearTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 17/08/2024.
//

import XCTest
import Triangular_treasure


final class LeapYearTests: XCTestCase {
    func test_year_onYearDivisibleBy400ReturnsTrue() {
        let sut = LeapYear()
        XCTAssertTrue(sut.isLeapYear(1600))
        XCTAssertEqual(sut.isLeapYear(2000), true)
    }
    
    func test_year_OnYearDivisibleBy100ReturnsFalse() {
        let sut = LeapYear()
        XCTAssertEqual(sut.isLeapYear(2100), false)
        XCTAssertEqual(sut.isLeapYear(2015), false)
    }
    
    func test_year_divisibleBy4ButNotBy100ReturnsTrue() {
        let sut = LeapYear()
        XCTAssertEqual(sut.isLeapYear(2020), true)
        XCTAssertEqual(sut.isLeapYear(2024), true)
    }
    
}
