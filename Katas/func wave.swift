//
//  func wave.swift
//  Katas
//
//  Created by Maks Vogtman on 10/11/2022.
//

import Foundation

// Task

// In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

// Rules

//  1. The input string will always be lower case but maybe empty.

//  2. If the character in the string is whitespace then pass over it as if it was an empty seat

// Example

// wave("hello") -> ["Hello", "hEllo", "heLlo", "helLo", "    hellO   "]

func wave(_ y: String) -> [String] {
    y.indices.map { index in
        if y[index].isWhitespace {
            
        }
        return y.replacingCharacters(in: index...index, with: y[index...index].uppercased())
    }
}



func wave2(_ y: String) -> [String] {
    guard y.isEmpty == false else { return [] }
    var result = [String]()
    
    for (offset, i) in y.indices.enumerated() {
        guard !y[i].isWhitespace else { continue }
        
        let uppercased: Character = Character(y[i].uppercased())
        var newWordArray = [Character](y)
        newWordArray[offset] = uppercased
        
        result.append(String(newWordArray))
    }
    
    return result
}



func wave3(_ y: String) -> [String] {
    guard y.isEmpty == false else { return [] }
    var result = [String]()
    
    for i in y.indices {
        if !y[i].isWhitespace {
            result.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
        }
    }
    
    return result
}



func wave4(_ y: String) -> [String] {
    return y.indices.compactMap {
        guard y[$0] != " " else { return nil }
        return y.replacingCharacters(in: $0..<y.index(after: $0), with: y[$0].uppercased())
    }
}
