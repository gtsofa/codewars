//
//  TriangularTreasure.swift
//  Triangular-treasure
//
//  Created by Julius on 17/08/2024.
//

import Foundation

/*public final class TriangularTreasure {
    public init() {}
    
    public func triangular(_ n: Int) -> Int  {
        guard n > 0 else {
            return 0
        }
        return n * (n + 1) / 2
    }
}*/

// #Question statement
// Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// You need to return the nth triangular number. You should return 0 for out of range values:

// # Answer statement
/*Explanation:
Triangular Numbers: The nth triangular number can be calculated using the formula n * (n + 1) / 2.
Out-of-Range Handling: If n is less than or equal to 0, the function returns 0 since there are no triangular numbers for those values.
This code will correctly return the nth triangular number or 0 for invalid inputs.*/

// #version 1

public final class TriangularTreasure {
    public init() {}
    
    public func triangular(_ n: Int) -> Int  {
        var total = 0
        if (n > 0) {
            for element in 1...n {
                total += element
            }
        }
        
        return total
    }
}

