//
//  Factorial.swift
//  Triangular-treasure
//
//  Created by Julius on 25/08/2024.
//

import Foundation

public class Factorial {
    public init () {}
    
    public func factorial(_ n: Int) -> UInt64 {
        //the factorial of `0` is defined as `1`
        if n == 0 {
            return 1
        } else {
            // The function calls itself with `n-1` until it reaches `0`, where the factorial of `0` is defined as `1`.
            //The results are then multiplied together as the stack unwinds.
            return UInt64(n) * factorial(n - 1)
        }
    }
}
