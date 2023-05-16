//
//  func count.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2022.
//

import Foundation


// write a function that will count characters in method
// if character is "a" and the word is "mama" a function should return 2
// if the character is "A" and the word is "mama" a function should return 2
// if the character is "a" and the word is "MAMA" a function should return 2
// if the character is "a" and the word is "bongo" a function should return 0


func count(searchedCharacter: Character, in string: String) -> Int {
    
    var stringArray: [Character] = []
    for character in string {
        if character.lowercased() == searchedCharacter.lowercased() {
            stringArray.append(character)
        }
    }
    return stringArray.count
}





func countWithMap(searchedCharacter: Character, in string: String) -> Int {
    
    return (Array(string).filter { $0 == searchedCharacter }).count
}

