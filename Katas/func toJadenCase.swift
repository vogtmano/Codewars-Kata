//
//  func toJadenCase.swift
//  Katas
//
//  Created by Maks Vogtman on 12/11/2021.
//

import Foundation

// Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word. For simplicity, you'll have to capitalize each word, check out how contractions are expected to be in the example below.

// Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

// Example:

// Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
// Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

// 1. Split the string on words
// 2. Uppercase the first letter of each word
// 3. Connect the string separated with space
// 4. Make sure that the last space has been removed
// 5. return the string

extension String {
    func toJadenCase() -> String {
        // I declared a constant arrayOfString which is of type Array of String
        // I assigned a value of self (String) with components(separatedBy: ) method, which splits the words in String and separates them by space, to constant arrayOfStrings
        let arrayOfString : [String] = self.components(separatedBy: " ")
        // I declared a constant variable array which is of type Array of String
        // I assigned value of an empty array to a constant variable array
        var array : [String] = []
        // for-in loop that iterates through a word in the arrayOfString
        for word in arrayOfString {
            // I declared a constant newWord
            // I assigned a value of word to a constant newWord
            let newWord = word
            // I declared a constant firstLetter
            // I assigned a value of word with the .first and .uppercased methods (which means take the first character of the word and make it uppercased)
            let firstLetter = word.first!.uppercased()
            // I declared a constant newestWord
            // I assigned a value of newWord with the .dropFirst method (which removes first letter from the word)
            let newestWord = newWord.dropFirst()
            // I appended the constants firstLetter and newestWord into a constant variable array
            array.append(firstLetter + newestWord)
        }
        // return array with .joined method and space as the separator (to separates the words in the String)
        return array.joined(separator: " ")
    }
}


// The other way to solve this exercise

extension String {
    func toJadenCase2() -> String {
        return capitalized
    }
}
