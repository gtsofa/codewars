//
//  Solution.swift
//  RomanNumeralsDecoder
//
//  Created by Julius on 16/08/2024.
//

import Foundation

public final class Solution {
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
}
