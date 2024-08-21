//
//  ShortestWord.swift
//  Triangular-treasure
//
//  Created by Julius on 22/08/2024.
//

import Foundation

public class ShortestWord {
    public init() {}
    
    public func find_short(_ str: String) -> Int {
        // Splits the input string into an array of words using space as the separator.
        let words = str.split(separator: " ")
        // Maps each word to its length.
        // Finds the minimum length among the words.
        let shortWord = words.map { $0.count}.min() ?? 0
        return shortWord
    }
}
