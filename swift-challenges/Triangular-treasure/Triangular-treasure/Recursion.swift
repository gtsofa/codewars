//
//  Recursion.swift
//  Triangular-treasure
//
//  Created by Julius on 25/08/2024.
//

import Foundation

public class Recursion {
    public init() {}
    
    public func fact(_ number: Int) -> Int {
        if number == 1 {
            return 1
        } else {
            return number * fact(number - 1)
        }
    }
}
