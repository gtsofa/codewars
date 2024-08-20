//
//  SumofoddnumbersTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 20/08/2024.
//

import XCTest

class Sumofoddnumbers {
    func sumOddNumbers(_ row: Int) -> Int {
        return 1
    }
}

final class SumofoddnumbersTests: XCTestCase {
    func test_sumOddNumbers_deliversOne() {
        let sut = Sumofoddnumbers()
        let result = sut.sumOddNumbers(1)
        
        XCTAssertEqual(result, 1)
        
        
    }

}
