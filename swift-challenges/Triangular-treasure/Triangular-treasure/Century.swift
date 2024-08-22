//
//  Century.swift
//  Triangular-treasure
//
//  Created by Julius on 23/08/2024.
//

import Foundation

public class Century {
    public init() {}
    
    public func whatCentury(_ year: String) -> String {
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
