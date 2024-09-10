//
//  MinMaxValueTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 03/09/2024.
//

import XCTest
import Triangular_treasure



final class MinMaxValueTests: XCTestCase {
    func test_findMinMax_returnsMinAndMaxValuesInAnArray() {
        //given
        let sut = MinMaxValue()
        //when/action
        let givenValue = sut.findMinMax(arr: [1, 3, 7])
        
        //Then/assertion
        XCTAssertEqual(givenValue, MinMax(min: 1, max: 7))
        //let test = [3, 1, 4, 1, 5, 9, 2, 6, 5]
        let a = [0, 3, 1, 4, 1, 5, 9, 2, 6, 5]
        
        XCTAssertEqual(sut.findMinMax(arr: a), MinMax(min: 0, max: 9))
    }

}
