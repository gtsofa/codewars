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
/*public final class Solution {
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
}*/

public final class Solution {
    public init() {}
    //#3: Another coool solution
    // My first task is to understand how roman numerals work
    // Each symbol has an associated value
    // Combining a smaller symbol A before a larger symbol B
    // subtracts A from B to get that digit
    // Combining two symbols of the same value adds them for a digit
    // Reading left to right, if we encounter a larger symbol after a smaller
    // symbol, we can subtract the smaller symbol from the larger before adding
    
    // Make a dictionary with the each symbol and it's decimal value
    let symbolValues: [Character: Int] = ["I": 1,
                                          "V": 5,
                                          "X": 10,
                                          "L": 50,
                                          "C": 100,
                                          "D": 500,
                                          "M": 1000,]
    
    public func solution(_ string:String) -> Int {
        var result = 0
        
        let charArray = Array(string) // convert string to array of characters for ease of use
        
        var i = 0
        
        while i < charArray.count {
            // Grab value of current symbol
            guard let value = symbolValues[charArray[i]] else { continue }
            
            // Check to see if the next symbol is of larger value than the current one
            if i + 1 < charArray.count, let nextValue = symbolValues[charArray[i + 1]], nextValue > value {
                result += nextValue - value // If so, subtract current from next and add to result
                i += 2
            } else {
                result += value // Otherwise, just add the current value
                i += 1
            }
        }
        
        return result
    }
}
