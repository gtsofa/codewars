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
            return "0"
        }
        // Formulae: Adds 99 to the year and then performs integer division by 100 to calculate the century.
        return String((yearInt + 99 ) / 100)
    }
}

final class CenturyTests: XCTestCase {
    func test_whatCentury_returnsTheCenturyOfInputYear() {
        let sut = Century()
        
        XCTAssertEqual(sut.whatCentury("1901"), "20")
    }

}
