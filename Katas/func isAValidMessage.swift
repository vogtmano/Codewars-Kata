//
//  func isAValidMessage.swift
//  Katas
//
//  Created by Maks Vogtman on 06/03/2023.
//

import Foundation

// In this kata, you have an input string and you should check whether it is a valid message. To decide that, you need to split the string by the numbers, and then compare the numbers with the number of characters in the following substring.

// For example "3hey5hello2hi" should be split into 3, hey, 5, hello, 2, hi and the function should return true, because "hey" is 3 characters, "hello" is 5, and "hi" is 2; as the numbers and the character counts match, the result is true.

// Notes:

// Messages are composed of only letters and digits
// Numbers may have multiple digits: e.g. "4code13hellocodewars" is a valid message
// Every number must match the number of character in the following substring, otherwise the message is invalid: e.g. "hello5" and "2hi2" are invalid
// If the message is an empty string, you should return true



func isAValidMessage(_ message: String) -> Bool {
    guard !message.isEmpty else { return true }
    guard message.first?.isNumber == true else { return false }
    
    let split = message.split(whereSeparator: { $0.isNumber })
    let numbers = message.split { !("0"..."9").contains($0) }.compactMap { Int($0) }
    
    return split.map { $0.count } == numbers.compactMap { Int(String($0)) }
}



// Other solution for this kata
func isAValidMessage2(_ message: String) -> Bool {
    guard let firstLetter = message.first else { return true }
    guard !firstLetter.isLetter else { return false }
    
    let words = message.split { !$0.isLetter }
    let wordNumbers = message.split { $0.isLetter }
    var validWordsCounter = 0
    
    for i in 0..<words.count {
        if words[i].count == Int(wordNumbers[i]) {
            validWordsCounter += 1
        }
    }
    
    return validWordsCounter == wordNumbers.count
}
