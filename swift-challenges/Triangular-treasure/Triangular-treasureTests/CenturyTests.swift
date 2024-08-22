//
//  CenturyTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 22/08/2024.
//

import XCTest
import Triangular_treasure

final class CenturyTests: XCTestCase {
    func test_whatCentury_returnsTheCenturyOfInputYear() {
        let sut = Century()
        
        XCTAssertEqual(sut.whatCentury("1901"), "20th")
        XCTAssertEqual(sut.whatCentury("1999"), "20th")
        XCTAssertEqual(sut.whatCentury("2011"), "21st")
        XCTAssertEqual(sut.whatCentury("2154"), "22nd")
        XCTAssertEqual(sut.whatCentury("2259"), "23rd")
    }

}
