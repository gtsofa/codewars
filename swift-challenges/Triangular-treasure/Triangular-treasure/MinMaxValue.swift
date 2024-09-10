//
//  MinMaxValue.swift
//  Triangular-treasure
//
//  Created by Julius on 03/09/2024.
//

import Foundation

public class MinMaxValue {
    public init() {}
    
    public func findMinMax(arr: [Int]) -> MinMax? {
        let sortedarr = arr.sorted()
        guard let first = sortedarr.first else { return nil }
        var minValue = first
        var maxValue = first
        
        for num in sortedarr {
            if num < first {
                minValue = num
            }
            if num > first {
                maxValue = num
            }
        }
        return MinMax(min: minValue, max: maxValue)
    }
}

Big O = O(n)
