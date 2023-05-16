//
//  func playPass.swift
//  Katas
//
//  Created by Maks Vogtman on 16/01/2023.
//

import Foundation


// Everyone knows passphrases. One can choose passphrases from poems, songs, movies names and so on but frequently they can be guessed due to common cultural references. You can get your passphrases stronger by different means. One is the following:

// choose a text in capital letters including or not digits and non alphabetic characters,

// shift each letter by a given number but the transformed letter must be a letter (circular shift),
// replace each digit by its complement to 9,
// keep such as non alphabetic and non digit characters,
// downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
// reverse the whole result.
// Example:

// your text: "BORN IN 2015!", shift 1

// 1 + 2 + 3 -> "CPSO JO 7984!"

// 4 "CpSo jO 7984!"

// 5 "!4897 Oj oSpC"

// With longer passphrases it's better to have a small and easy program. Would you write it?


func playPass(_ s: String, _ n: Int) -> String {
    var res = ""
    
     for (index, char) in s.enumerated() {
         if char.isLetter {
             let shiftedVal = ((Int(char.asciiValue!) + n - 65) % 26) + 65
             guard let unicodeScalar = UnicodeScalar(shiftedVal) else { return "" }
             let shiftedChar = Character(unicodeScalar)
             res += index % 2 == 0 ? String(shiftedChar).uppercased() : String(shiftedChar).lowercased()
         } else if char.isNumber {
             res += "\(9 - Int(String(char))!)"
         } else {
             res += String(char)
         }
     }
    
     return String(res.reversed())
}

