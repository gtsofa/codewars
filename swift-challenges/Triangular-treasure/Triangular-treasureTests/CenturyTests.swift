//
//  CenturyTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 22/08/2024.
//

import XCTest

public class Century {
    func whatCentury(_ year: String) -> String {
        guard let yearInt = Int(year) else {
            return ""
        }
        // Formulae: Adds 99 to the year and then performs integer division by 100 to calculate the century.
        let century = (yearInt + 99) / 100
        let suffix: String
        
        switch century % 10 {
        case 1 where century % 100 != 11:
            suffix = "st"
        case 2 where century % 100 != 12:
            suffix = "nd"
            
        case 3 where century % 100 != 13:
            suffix = "rd"
        default:
            suffix = "th"
        }
        
        return "\(century)\(suffix)"
    }
}

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
