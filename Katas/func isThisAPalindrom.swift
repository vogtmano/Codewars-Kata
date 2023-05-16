//
//  func isThisAPalindrom.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2022.
//

import Foundation

// Is this a Palindrome
// Palindrome is when rotated word is read exactly the same "rotator" is a palindrome
// "mama" is not (amam)
// write a function that check if the string is a palindrome. If it is return the true, otherwise false


func isThisAPalindrom(stringToCheck: String) -> Bool {
    let word: String = stringToCheck
    if (word == String(word.reversed())) {
        return true
    } else if (word != String(word.reversed())) {
        return false
    }
    return false
}


func isThisAPalindrom2(stringToCheck: String) -> Bool {
    if stringToCheck == String(stringToCheck.reversed()) {
        return true
    }
    return false
}



func isThisAPalindrom3(stringToCheck: String) -> Bool {
    return stringToCheck == String(stringToCheck.reversed())
}

    

