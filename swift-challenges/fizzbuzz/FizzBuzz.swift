//
//  FizzBuzz.swift
//  fizzbuzz
//
//  Created by Julius on 07/08/2023.
//

import Foundation

public class FizzBuzz {
    public init() {}
    
    public func evaluate(_ value: Int) -> String {
        
        
        if (value.isMultiple(of: 3) && value.isMultiple(of: 5)) {
            return "FizzBuzz"
        }
        if (value.isMultiple(of: 3)) {
            return "Fizz"
            
        } else if value.isMultiple(of: 5){
            
            return "Buzz"
        }
        
        return String(value)
    }
}
