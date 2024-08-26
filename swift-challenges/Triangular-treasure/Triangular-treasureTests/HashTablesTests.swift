//
//  HashTablesTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 26/08/2024.
//

import XCTest

public class HashTables {
    public init() {}
    
    var voter = [String: Bool]()
    
    public func checkVoter(_ name: String) -> String {
        if voter[name] != nil {
            return "Kick them out!"
        } else {
            voter[name] = true
            return "Let \(name) vote!"
        }
    }
}
final class HashTablesTests: XCTestCase {
    func test_checkVoter_returnsTrueIfPersonHasNotVotedYet() {
        let sut = HashTables()
        XCTAssertEqual(sut.checkVoter("Doe"), "Let Doe vote!")
        XCTAssertEqual(sut.checkVoter("mike"), "Let mike vote!")
        XCTAssertEqual(sut.checkVoter("mike"), "Kick them out!")
        
    }

}
