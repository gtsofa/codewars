//
//  Solution.swift
//  RomanNumeralsDecoder
//
//  Created by Julius on 16/08/2024.
//

import Foundation

/*public final class Solution {
    public init() {}
    
    public func solution(_ string: String) -> Int {
        let romanValues: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0
        let characters = Array(string)
        
        for i in 0..<characters.count {
            let currentValue = romanValues[characters[i]] ?? 0
            if i < characters.count - 1, currentValue < (romanValues[characters[i + 1]] ?? 0) {
                result -= currentValue
            } else {
                result += currentValue
            }
        }
        return result
    }
}*/

//# Another solution
public final class Solution {
    public init() {}
    
    func value(of numeral: Character) -> Int? {
        switch numeral {
        case "I": return 1
        case "V": return 5
        case "X": return 10
        case "L": return 50
        case "C": return 100
        case "D": return 500
        case "M": return 1000
        default: return nil
        }
    }
    
    public func solution(_ string: String) -> Int {
        let numerals = string.compactMap(value)
        let sum = numerals.reduce(0, +)
        
        let difference = zip(numerals, numerals.dropFirst())
            .filter(<)
            .map { $0.0 }
            .reduce(0, +)
        
        return sum - difference * 2
    }
}
