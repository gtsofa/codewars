//
//  StringMoves.swift
//  data-structures-and-algorithms-club
//
//  Created by Julius on 12/09/2024.
//

import Foundation

class StringMoves {
    func canMove(_ str: String) -> Int {
        var successfulMoves = 0
        var characters = Array(str) // 'ciao' --> ['c', 'i', 'a', 'o']
        let characterCount = characters.count
        
        for i in 0..<characterCount {
            if characters[i] == "^" || characters[i] == "v" {
                successfulMoves += 1
                characters[i] = "X"
            }
            
            if characters[i] == "<" && i == 0 {
                successfulMoves += 1
                characters[i] = "X"
            }
            
            if characters[i] == ">" && i == characterCount - 1 {
                successfulMoves += 1
            }
            
            if characters[i] == "<" && characters[i - 1] == "X" {
                successfulMoves += 1
            }
        }
        
        return successfulMoves
        
    }
}
