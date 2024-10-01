//
//  MinimumDeletion.swift
//  data-structures-and-algorithms-club
//
//  Created by Julius on 12/09/2024.
//

import Foundation

struct MinimumDeletion {
    func minDeletion(_ str: String) -> Int {
        var frequency = [Character: Int]()//aaa [a: 3]
        
        for char in str {
            frequency[char] = (frequency[char] ?? 0) + 1
        }
    
        var deletions = 0
        
        for count in frequency.values {
            if count % 2 != 0 {
                deletions += 1
            }
        }
        
        return deletions
    }
}
