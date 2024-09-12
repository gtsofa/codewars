//
//  MinimumDeletion.swift
//  data-structures-and-algorithms-club
//
//  Created by Julius on 12/09/2024.
//

import Foundation

struct MinimumDeletion {
    func minDeletion(_ str: String) -> Int {
        var frequency = [Character: Int]()
        
        for char in str {
            frequency[char, default: 0] += 1
        }
        
        var deletions = 0
        
        for (_, count) in frequency {
            if count % 2 != 0 {
                deletions += 1
            }
        }
        
        return deletions
    }
}
