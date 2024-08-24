//
//  SelectionSort.swift
//  Triangular-treasure
//
//  Created by Julius on 24/08/2024.
//

import Foundation

public class SelectionSort {
    public init() {}
    
    public func findSmallest(_ arr: [Int]) -> Int {
        // Stores the smallest value
        var smallestElement = arr[0]
        // Stores the index of the smallest value
        var smallestIndex = 0
        
        for (i, element) in arr.enumerated() {
            if element < smallestElement {
                smallestElement = element
                smallestIndex = i
            }
        }
        return smallestIndex
    }
    
    // Sorts an array
    public func selectionSort(_ arr: [Int]) -> [Int] {
        var arr = arr
        var sortedArray: [Int] = []
        
        for _ in 0..<arr.count {
            // Finds the smallest element in the array
            let smallestIndex = findSmallest(arr)
            // And adds it to the new array
            sortedArray.append(arr.remove(at: smallestIndex))
        }
        
        return sortedArray
        
    }
}
