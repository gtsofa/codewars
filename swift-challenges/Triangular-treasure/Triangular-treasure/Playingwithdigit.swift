//
//  Playingwithdigit.swift
//  Triangular-treasure
//
//  Created by Julius on 23/08/2024.
//

import Foundation

public class Playingwithdigit {
    public init() {}
    
    public func digPow(for number: Int, using power: Int) -> Int {
        ////The number numer is converted into an array of its digits
        let digits = String(number).compactMap { Int(String($0)) }
        let sum = digits.enumerated().reduce(0) { acc, pair in
            let (index, digit) = pair
            return acc + Int(pow(Double(digit), Double(power + index )))
        }
        ////For each digit, raise it to the power of its position (starting from power) and add it to the sum.
        return sum % number == 0 ? sum / number : -1
    }
}
