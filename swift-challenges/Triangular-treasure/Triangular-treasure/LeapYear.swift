//
//  LeapYear.swift
//  Triangular-treasure
//
//  Created by Julius on 21/08/2024.
//

import Foundation

public class LeapYear {
    public init() {}
    
    public func isLeapYear(_ year: Int) -> Bool {
        guard year % 4 == 0 else { return false }
        guard year % 100 == 0 else { return true }
        guard year % 400 == 0 else { return false }
        return true
    }
}
