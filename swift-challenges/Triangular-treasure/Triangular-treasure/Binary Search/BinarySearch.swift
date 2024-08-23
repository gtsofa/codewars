//
//  BinarySearch.swift
//  Triangular-treasure
//
//  Created by Julius on 23/08/2024.
//

import Foundation


public class BinarySearch {
    public init() {}
    
    public func binary_search(list: [Int], item: Int) -> Int? {
        var low = 0
        var high = list.count - 1
        
        while low <= high {
            let mid = low + high
            let guess = list[mid]
            if guess == item {
                return mid
            }
            if guess > item {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return nil
    }
}
