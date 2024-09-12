//
//  StringMoves.swift
//  data-structures-and-algorithms-club
//
//  Created by Julius on 12/09/2024.
//

import Foundation

class StringMoves {
    func canMove(_ str: String) -> Int {
        let characterCount = str.count
        var successfulMoves = 0
        let characters = Array(str) // 'ciao' --> ['c', 'i', 'a', 'o']
        
        for i in 0..<characterCount {
            if characters[i] == "<" {
                if i > 0 && characters[i-1] != "<" && characters[i-1] != ">" {
                    successfulMoves += 1
                }
            } else if characters[i] == ">" {
                if i < characterCount - 1 && characters[i+1] != "<" && characters[i+1] != ">" {
                    successfulMoves += 1
                }
            } else if characters[i] == "^" || characters[i] == "v" {
                successfulMoves += 1
            }
        }
        return successfulMoves
        
    }
}
