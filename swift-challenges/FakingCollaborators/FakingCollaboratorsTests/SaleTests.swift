//
//  SaleTests.swift
//  FakingCollaboratorsTests
//
//  Created by Julius on 21/09/2023.
//

import XCTest

protocol Display {
    func showLine(line: String)
}

class Sale {
    // accepts display .. it doesn't matter if it's fake/real display
    let display: Display
    
    init(display: Display) {
        self.display = display
    }
    // showLine mtd calls the display variable + pass itemLine
    func scan(_ barcode: String) {
        let itemLine = "Milk $3.99"
        //what happens here depends on the type of display we gave to the sale object
        // if we gave it an ArtR56Display, it attempts to display on the real cash register hardware
        // if we gave it the DisplaySpy, it won't, but we will be able to see what would've have been displayed.
        display.showLine(line: itemLine)
    }
}
final class SaleTests: XCTestCase {
    func test_scan_DisplayAnItem() {
        let display = DisplaySpy()
        let sut = Sale(display: display)
        sut.scan("1")
        
        XCTAssertEqual(display.getLastLine(), "Milk $3.99")
    }
    
    // MARK: - Helpers
    class DisplaySpy: Display {
        
        private(set) var lastLine = ""
        
        // display see this and uses it
        func showLine(line: String) {
            lastLine = line
        }
        
        // test cares about this
        func getLastLine() -> String {
            return lastLine
        }
    }

}
