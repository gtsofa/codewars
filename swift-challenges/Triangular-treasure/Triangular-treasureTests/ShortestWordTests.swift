//
//  ShortestWordTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 21/08/2024.
//

import XCTest

public class ShortestWord {
    func find_short(_ str: String) -> Int {
        // Splits the input string into an array of words using space as the separator.
        let words = str.split(separator: " ")
        // Maps each word to its length.
        // Finds the minimum length among the words.
        let shortWord = words.map { $0.count}.min() ?? 0
        return shortWord
    }
}

final class ShortestWordTests: XCTestCase {
    func test_shortWord_findsShortWordInAString() {
        let sut = ShortestWord()
        
        XCTAssertEqual(sut.find_short("I love me"), 1)
        XCTAssertEqual(sut.find_short("bitcoin take over the world maybe who knows perhaps"), 3)
        XCTAssertEqual(sut.find_short("lets talk about javascript the best language"), 3)
        XCTAssertEqual(sut.find_short("i want to travel the world writing code one day"), 1)
        XCTAssertEqual(sut.find_short("Lets all go on holiday somewhere very cold"), 2)
        XCTAssertEqual(sut.find_short("Let's travel abroad shall we"), 2)
        XCTAssertEqual(sut.find_short("Let's spread love because it's only the thing that matter"), 3)
    }

}
