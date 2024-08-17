//
//  TriangularTreasure.swift
//  Triangular-treasure
//
//  Created by Julius on 17/08/2024.
//

import Foundation

public final class TriangularTreasure {
    public init() {}
    
    public func triangular(_ n: Int) -> Int  {
        guard n > 0 else {
            return 0
        }
        return n * (n + 1) / 2
    }
}

// #Question statement
// Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// You need to return the nth triangular number. You should return 0 for out of range values:
